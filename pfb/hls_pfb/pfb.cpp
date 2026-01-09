#include "pfb.h"

void read_inputs(
    hls::stream<data_t> &din_i0, hls::stream<data_t> &din_q0,
    hls::stream<data_t> &din_i1, hls::stream<data_t> &din_q1,
    hls::stream<data_t> &din_i2, hls::stream<data_t> &din_q2,
    hls::stream<data_t> &din_i3, hls::stream<data_t> &din_q3,
    hls::stream<parallel_sample_t> &internal_in
) {
    #pragma HLS INLINE off 
    
    read_loop: for (int i = 0; i < FFT_LEN; i++) {
        #pragma HLS PIPELINE II=1 rewind=false
        
        #pragma HLS INTERFACE ap_ctrl_hs port=return

        parallel_sample_t pack;
        
        pack.ch[0].i = din_i0.read(); pack.ch[0].q = din_q0.read();
        pack.ch[1].i = din_i1.read(); pack.ch[1].q = din_q1.read();
        pack.ch[2].i = din_i2.read(); pack.ch[2].q = din_q2.read();
        pack.ch[3].i = din_i3.read(); pack.ch[3].q = din_q3.read();
        
        internal_in.write(pack);
    }
}

void compute_pfb(
    hls::stream<parallel_sample_t> &internal_in,
    hls::stream<parallel_sample_t> &internal_out,
    const coeff_t coeff[TOTAL_SAMPLES]
) {
    #pragma HLS INLINE off

    #pragma HLS INTERFACE ap_ctrl_hs port=return


    static iq_sample_t branch_memory[NUM_CHANNELS][TAPS][FFT_LEN];
    #pragma HLS ARRAY_PARTITION variable=branch_memory complete dim=1
    #pragma HLS ARRAY_PARTITION variable=branch_memory complete dim=2
    #pragma HLS BIND_STORAGE variable=branch_memory type=RAM_1P impl=BRAM

    static ap_uint<2> write_bank_idx = 0;
    
    static coeff_t local_coeffs[TOTAL_SAMPLES];
    static bool coeff_loaded = false;

    if (!coeff_loaded) {
        load_coeffs: for(int i=0; i<TOTAL_SAMPLES; i++) {
            #pragma HLS PIPELINE II=1 rewind=false
            local_coeffs[i] = coeff[i];
        }
        coeff_loaded = true;
    }

    compute_loop: for (int k = 0; k < FFT_LEN; k++) {
        #pragma HLS PIPELINE II=1 rewind=false
        
        parallel_sample_t input_pack = internal_in.read();

        store_loop: for(int c=0; c<NUM_CHANNELS; c++) {
            #pragma HLS UNROLL
            branch_memory[c][write_bank_idx][k] = input_pack.ch[c];
        }

        parallel_sample_t result_pack;

        channel_loop: for (int c = 0; c < NUM_CHANNELS; c++) {
            #pragma HLS UNROLL
            accum_fixed_t acc_i = 0;
            accum_fixed_t acc_q = 0;

            tap_loop: for (int t = 0; t < TAPS; t++) {
                #pragma HLS UNROLL 
                ap_uint<2> bank_selector = (write_bank_idx - t) & 0x3;
                
                iq_sample_t sample = branch_memory[c][bank_selector][k];
                coeff_t w = local_coeffs[t * FFT_LEN + k];

                acc_i += sample.i * w;
                acc_q += sample.q * w;
            }
            result_pack.ch[c].i = (data_t)acc_i;
            result_pack.ch[c].q = (data_t)acc_q;
        }

        internal_out.write(result_pack);
    }
    
    write_bank_idx++;
}

void write_outputs(
    hls::stream<parallel_sample_t> &internal_out,
    hls::stream<data_32> &dout_0,
    hls::stream<data_32> &dout_1,
    hls::stream<data_32> &dout_2,
    hls::stream<data_32> &dout_3
) {
    #pragma HLS INLINE off

    #pragma HLS INTERFACE ap_ctrl_hs port=return

    data_32 packed_val;

    write_loop: for (int i = 0; i < FFT_LEN; i++) {
        #pragma HLS PIPELINE II=1 rewind=false

        parallel_sample_t pack = internal_out.read();

        packed_val.range(31, 0) = (pack.ch[0].i.range(15, 0), pack.ch[0].q.range(15, 0));
        dout_0.write(packed_val);

        // CHANNEL 1
        packed_val.range(31, 0) = (pack.ch[1].i.range(15, 0), pack.ch[1].q.range(15, 0));
        dout_1.write(packed_val);

        // CHANNEL 2
        packed_val.range(31, 0) = (pack.ch[2].i.range(15, 0), pack.ch[2].q.range(15, 0));
        dout_2.write(packed_val);

        // CHANNEL 3
        packed_val.range(31, 0) = (pack.ch[3].i.range(15, 0), pack.ch[3].q.range(15, 0));
        dout_3.write(packed_val);
    }
}

void pfb_multichannel_decimator(
    hls::stream<data_t> &din_data_i0, hls::stream<data_t> &din_data_q0,
    hls::stream<data_t> &din_data_i1, hls::stream<data_t> &din_data_q1,
    hls::stream<data_t> &din_data_i2, hls::stream<data_t> &din_data_q2,
    hls::stream<data_t> &din_data_i3, hls::stream<data_t> &din_data_q3,

    hls::stream<data_32> &dout_data_0,
    hls::stream<data_32> &dout_data_1,
    hls::stream<data_32> &dout_data_2,
    hls::stream<data_32> &dout_data_3,

    const coeff_t coeff[TOTAL_SAMPLES] 
) {
    #pragma HLS INTERFACE axis port=din_data_i0
    #pragma HLS INTERFACE axis port=din_data_q0
    #pragma HLS INTERFACE axis port=din_data_i1
    #pragma HLS INTERFACE axis port=din_data_q1
    #pragma HLS INTERFACE axis port=din_data_i2
    #pragma HLS INTERFACE axis port=din_data_q2
    #pragma HLS INTERFACE axis port=din_data_i3
    #pragma HLS INTERFACE axis port=din_data_q3

    #pragma HLS INTERFACE axis port=dout_data_0
    #pragma HLS INTERFACE axis port=dout_data_1
    #pragma HLS INTERFACE axis port=dout_data_2
    #pragma HLS INTERFACE axis port=dout_data_3

    #pragma HLS INTERFACE m_axi port=coeff offset=slave bundle=gmem depth=4096 latency=64
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    #pragma HLS DATAFLOW
    
    hls::stream<parallel_sample_t> stream_read_to_compute("s_r2c");
    hls::stream<parallel_sample_t> stream_compute_to_write("s_c2w");
    
    #pragma HLS STREAM variable=stream_read_to_compute depth=16
    #pragma HLS STREAM variable=stream_compute_to_write depth=16

    read_inputs(
        din_data_i0, din_data_q0, din_data_i1, din_data_q1, 
        din_data_i2, din_data_q2, din_data_i3, din_data_q3, 
        stream_read_to_compute
    );

    compute_pfb(
        stream_read_to_compute,
        stream_compute_to_write, 
        coeff
    );

    write_outputs(
        stream_compute_to_write,
        dout_data_0, dout_data_1, dout_data_2, dout_data_3
    );
}