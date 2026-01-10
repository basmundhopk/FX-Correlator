create_project prj -part xc7z045-ffg900-2 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/home/brett/Documents/FX_Correlator/pfb/hls_pfb/hls_pfb/hls/syn/verilog/pfb_multichannel_fft_syn_config1_6_core_ip.tcl"
source "/home/brett/Documents/FX_Correlator/pfb/hls_pfb/hls_pfb/hls/syn/verilog/pfb_multichannel_fft_syn_config1_4_core_ip.tcl"
source "/home/brett/Documents/FX_Correlator/pfb/hls_pfb/hls_pfb/hls/syn/verilog/pfb_multichannel_fft_syn_config1_5_core_ip.tcl"
source "/home/brett/Documents/FX_Correlator/pfb/hls_pfb/hls_pfb/hls/syn/verilog/pfb_multichannel_fft_syn_config1_s_core_ip.tcl"
