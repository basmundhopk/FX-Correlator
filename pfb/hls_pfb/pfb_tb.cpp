#include <iostream>
#include <vector>
#include <cmath>
#include <iomanip>
#include "pfb.h"
#include <complex>

// Test file for the HW implementation of the PFB decimation
// Defines a software based PFB function and compares computed results of various test functions

void sw_pfb_single_channel(
    std::vector<std::complex<double>> &input_history,
    std::vector<std::complex<double>> &new_block,
    std::vector<std::complex<double>> &output_block,
    const std::vector<double> &coeffs
) {
    for (int i = 0; i < (TAPS - 1) * FFT_LEN; i++) {
        input_history[i] = input_history[i + FFT_LEN];
    }
    for (int i = 0; i < FFT_LEN; i++) {
        input_history[(TAPS - 1) * FFT_LEN + i] = new_block[i];
    }

    for (int k = 0; k < FFT_LEN; k++) {
        std::complex<double> acc(0.0, 0.0);

        for (int t = 0; t < TAPS; t++) {
            int sample_idx = ((TAPS - 1 - t) * FFT_LEN) + k;
            int coeff_idx  = (t * FFT_LEN) + k;

            std::complex<double> sample = input_history[sample_idx];
            double c = coeffs[coeff_idx];

            acc += sample * c;
        }
        output_block[k] = acc;
    }
}


int main() {
    std::cout << "Starting Multichannel PFB Test..." << std::endl;

    // Match .h file types
    hls::stream<data_t> din_data_i0("din_i0"), din_data_q0("din_q0");
    hls::stream<data_t> din_data_i1("din_i1"), din_data_q1("din_q1");
    hls::stream<data_t> din_data_i2("din_i2"), din_data_q2("din_q2");
    hls::stream<data_t> din_data_i3("din_i3"), din_data_q3("din_q3");

    hls::stream<data_32> dout_data_0("dout_0");
    hls::stream<data_32> dout_data_1("dout_1");
    hls::stream<data_32> dout_data_2("dout_2");
    hls::stream<data_32> dout_data_3("dout_3");

    coeff_t coeffs_hw[TOTAL_SAMPLES];
    std::vector<double> coeffs_sw(TOTAL_SAMPLES);

    // History buffers for 4 separate channels
    std::vector<std::vector<std::complex<double>>> history(NUM_CHANNELS, std::vector<std::complex<double>>(TOTAL_SAMPLES, {0,0}));
    
    // Initializing coefficients, software = hardware
    for (int i = 0; i < TOTAL_SAMPLES; i++) {
        double val = 0.25; 
        coeffs_sw[i] = val;
        coeffs_hw[i] = (coeff_t)val;
    }

    // Loop for 4 channels (8 data streams)
    const int NUM_BLOCKS = 8;
    int error_count = 0;

    for (int block = 0; block < NUM_BLOCKS; block++) {
        std::cout << "Processing Block " << block << "..." << std::endl;

        // Storage for references
        std::vector<std::vector<std::complex<double>>> input_blocks_sw(NUM_CHANNELS, std::vector<std::complex<double>>(FFT_LEN));
        std::vector<std::vector<std::complex<double>>> output_blocks_sw(NUM_CHANNELS, std::vector<std::complex<double>>(FFT_LEN));

        for (int i = 0; i < FFT_LEN; i++) {
            double time = block * FFT_LEN + i;

            // Creating test signals for each channel
            std::complex<double> ch_data[4];
            ch_data[0] = {0.8 * cos(time * 0.1), 0.8 * sin(time * 0.1)};
            ch_data[1] = {0.8 * cos(time * 0.2), 0.8 * sin(time * 0.2)};
            ch_data[2] = {0.5 * cos(time * 0.4), 0.5 * sin(time * 0.4)};
            ch_data[3] = {0.9 * cos(time * 0.05), 0.0};

            // Saving channel data for SW testing
            for(int c=0; c<4; c++) input_blocks_sw[c][i] = ch_data[c];

            // Converting test function data into hardware streams
            din_data_i0.write((data_t)ch_data[0].real()); din_data_q0.write((data_t)ch_data[0].imag());
            din_data_i1.write((data_t)ch_data[1].real()); din_data_q1.write((data_t)ch_data[1].imag());
            din_data_i2.write((data_t)ch_data[2].real()); din_data_q2.write((data_t)ch_data[2].imag());
            din_data_i3.write((data_t)ch_data[3].real()); din_data_q3.write((data_t)ch_data[3].imag());
        }

        // HW test
        pfb_multichannel_decimator(
            din_data_i0, din_data_q0, 
            din_data_i1, din_data_q1, 
            din_data_i2, din_data_q2, 
            din_data_i3, din_data_q3,

            dout_data_0,
            dout_data_1,
            dout_data_2,
            dout_data_3,

            coeffs_hw 
        );
        
        // SW test
        for(int c=0; c<NUM_CHANNELS; c++) {
            sw_pfb_single_channel(history[c], input_blocks_sw[c], output_blocks_sw[c], coeffs_sw);
        }

        // Size verification
        if (dout_data_0.size() != FFT_LEN) {
            std::cout << "ERROR: Output stream size mismatch!" << std::endl;
            return 1;
        }

        for (int i = 0; i < FFT_LEN; i++) {
            // Read HW outputs and making them normal complex numbers
            std::complex<double> hw_out[4];
            data_32 pack;
            data_t i_temp, q_temp;

            pack = dout_data_0.read();

            i_temp.range(15, 0) = pack.range(31, 16); 
            q_temp.range(15, 0) = pack.range(15, 0);

            hw_out[0].real(i_temp.to_double());
            hw_out[0].imag(q_temp.to_double());

            pack = dout_data_1.read();
            i_temp.range(15, 0) = pack.range(31, 16);
            q_temp.range(15, 0) = pack.range(15, 0);

            hw_out[1].real(i_temp.to_double());
            hw_out[1].imag(q_temp.to_double());

            pack = dout_data_2.read();
            i_temp.range(15, 0) = pack.range(31, 16);
            q_temp.range(15, 0) = pack.range(15, 0);

            hw_out[2].real(i_temp.to_double());
            hw_out[2].imag(q_temp.to_double());

            pack = dout_data_3.read();
            i_temp.range(15, 0) = pack.range(31, 16);
            q_temp.range(15, 0) = pack.range(15, 0);

            hw_out[3].real(i_temp.to_double());
            hw_out[3].imag(q_temp.to_double());

            // HW vs SW comparison
            for(int c=0; c<NUM_CHANNELS; c++) {
                double diff_real = std::abs(hw_out[c].real() - output_blocks_sw[c][i].real());
                double diff_imag = std::abs(hw_out[c].imag() - output_blocks_sw[c][i].imag());
                
                // Tolerance for fixed point rounding errors
                const double TOLERANCE = 0.002; 

                if (diff_real > TOLERANCE || diff_imag > TOLERANCE) {
                    error_count++;
                    if (error_count < 10) { 
                        std::cout << "Mismatch Ch" << c << " Block " << block << " Sample " << i << "\n"
                                  << "  HW: " << hw_out[c] << "\n"
                                  << "  SW: " << output_blocks_sw[c][i] << "\n"
                                  << "  Diff: " << diff_real << ", " << diff_imag << std::endl;
                    }
                }
            }
        }
    }

    if (error_count == 0) {
        std::cout << "---------------------------------------------" << std::endl;
        std::cout << "PASS: All 4 Channels Matched." << std::endl;
        std::cout << "---------------------------------------------" << std::endl;
        return 0;
    } else {
        std::cout << "---------------------------------------------" << std::endl;
        std::cout << "FAIL: Found " << error_count << " mismatches." << std::endl;
        std::cout << "---------------------------------------------" << std::endl;
        return 1;
    }
}