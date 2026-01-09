#ifndef PFB_H
#define PFB_H

#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_stream.h>

#define NUM_CHANNELS 4
#define FFT_LEN 1024
#define TAPS 4
#define TOTAL_SAMPLES (FFT_LEN * TAPS)

typedef ap_fixed<16, 1, AP_TRN, AP_WRAP> data_t;
typedef ap_fixed<16, 1, AP_TRN, AP_WRAP> coeff_t;
typedef ap_fixed<40, 4, AP_TRN, AP_WRAP> accum_fixed_t;
typedef ap_fixed<32, 1, AP_TRN, AP_WRAP> data_32;

struct iq_sample_t {
    data_t i;
    data_t q;
};

struct parallel_sample_t {
    iq_sample_t ch[NUM_CHANNELS];
};

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
);

#endif