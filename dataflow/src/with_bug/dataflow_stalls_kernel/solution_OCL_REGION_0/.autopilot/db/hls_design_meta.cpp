#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("s_axi_control_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_AWADDR", 6, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_ARADDR", 6, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
	Port_Property("m_axi_gmemo_AWVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmemo_AWREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_gmemo_AWADDR", 64, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmemo_AWID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_gmemo_AWLEN", 8, hls_out, 0, "m_axi", "LEN", 1),
	Port_Property("m_axi_gmemo_AWSIZE", 3, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmemo_AWBURST", 2, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmemo_AWLOCK", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmemo_AWCACHE", 4, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmemo_AWPROT", 3, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmemo_AWQOS", 4, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmemo_AWREGION", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmemo_AWUSER", 1, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_gmemo_WVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmemo_WREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_gmemo_WDATA", 64, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmemo_WSTRB", 8, hls_out, 0, "m_axi", "STRB", 1),
	Port_Property("m_axi_gmemo_WLAST", 1, hls_out, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmemo_WID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_gmemo_WUSER", 1, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_gmemo_ARVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmemo_ARREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_gmemo_ARADDR", 64, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmemo_ARID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_gmemo_ARLEN", 8, hls_out, 0, "m_axi", "LEN", 1),
	Port_Property("m_axi_gmemo_ARSIZE", 3, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmemo_ARBURST", 2, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmemo_ARLOCK", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmemo_ARCACHE", 4, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmemo_ARPROT", 3, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmemo_ARQOS", 4, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmemo_ARREGION", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmemo_ARUSER", 1, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_gmemo_RVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmemo_RREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_gmemo_RDATA", 64, hls_in, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmemo_RLAST", 1, hls_in, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmemo_RID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_gmemo_RUSER", 1, hls_in, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_gmemo_RRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmemo_BVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmemo_BREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_gmemo_BRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmemo_BID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_gmemo_BUSER", 1, hls_in, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_gmemi_AWVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmemi_AWREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_gmemi_AWADDR", 64, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmemi_AWID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_gmemi_AWLEN", 8, hls_out, 1, "m_axi", "LEN", 1),
	Port_Property("m_axi_gmemi_AWSIZE", 3, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmemi_AWBURST", 2, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmemi_AWLOCK", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmemi_AWCACHE", 4, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmemi_AWPROT", 3, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmemi_AWQOS", 4, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmemi_AWREGION", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmemi_AWUSER", 1, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_gmemi_WVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmemi_WREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_gmemi_WDATA", 64, hls_out, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmemi_WSTRB", 8, hls_out, 1, "m_axi", "STRB", 1),
	Port_Property("m_axi_gmemi_WLAST", 1, hls_out, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmemi_WID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_gmemi_WUSER", 1, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_gmemi_ARVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmemi_ARREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_gmemi_ARADDR", 64, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_gmemi_ARID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_gmemi_ARLEN", 8, hls_out, 1, "m_axi", "LEN", 1),
	Port_Property("m_axi_gmemi_ARSIZE", 3, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_gmemi_ARBURST", 2, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_gmemi_ARLOCK", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_gmemi_ARCACHE", 4, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_gmemi_ARPROT", 3, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_gmemi_ARQOS", 4, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_gmemi_ARREGION", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_gmemi_ARUSER", 1, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_gmemi_RVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmemi_RREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_gmemi_RDATA", 64, hls_in, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_gmemi_RLAST", 1, hls_in, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_gmemi_RID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_gmemi_RUSER", 1, hls_in, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_gmemi_RRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmemi_BVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_gmemi_BREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_gmemi_BRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_gmemi_BID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_gmemi_BUSER", 1, hls_in, 1, "m_axi", "USER", 1),
};
const char* HLS_Design_Meta::dut_name = "dataflow_stalls_kernel";
