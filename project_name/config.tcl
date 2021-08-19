set script_dir [file dirname [file normalize [info script]]]
# 项目名称
set ::env(PROJECT_NAME) PROJECT_NAME
# 顶层模块名称
set ::env(DESIGN_NAME) DESIGN_NAME

# VERILOG源码文件
set ::env(VERILOG_FILES) [glob $script_dir/../../rtl/verilog/*.v]
# 时序控制文件
set ::env(BASE_SDC_FILE) $script_dir/base.sdc
# 引脚控制文件
set ::env(FP_PIN_ORDER_CFG) $script_dir/pin_order.cfg
# 电网控制文件
set ::env(PDN_CFG) $script_dir/pdn.tcl

set ::env(SYNTH_READ_BLACKBOX_LIB) 1
set ::env(FP_SIZING) absolute
# DIE 面积控制
set ::env(DIE_AREA) "0 0 2300 3000"
# CORE 面积控制
# set ::env(CORE_AREA) "0 0 2300 3000"
# 
set ::env(FP_CORE_UTIL) 50
# 
set ::env(PL_TARGET_DENSITY) 0.3
set ::env(GENERATE_FINAL_SUMMARY_REPORT) 1
#set ::env(SYNTH_STRATEGY) 0 
set ::env(SYNTH_MAX_FANOUT) 4

set ::env(GLB_RT_MAXLAYER) 5
set ::env(GLB_RT_ALLOW_CONGESTION) 1
set ::env(DIODE_INSERTION_STRATEGY) 3 
set ::env(GLB_RT_MAX_DIODE_INS_ITERS) 1 

# 时钟频率
set ::env(CLOCK_PERIOD) "100"
# 时钟树引脚
set ::env(CLOCK_PORT) "clk"
# 复位引脚
set ::env(REST_PORT) "rst"

#set ::env(LIB_SYNTH) $script_dir/lib/sky130_fd_sc_hd__typical.lib
#set ::env(LIB_MIN) $script_dir/lib/sky130_fd_sc_hd__fast.lib
#set ::env(LIB_MAX) $script_dir/lib/sky130_fd_sc_hd__slow.lib
#set ::env(LIB_TYPICAL) $script_dir/lib/sky130_fd_sc__hd_typical.lib

#set ::env(EXTRA_LEFS) [glob $script_dir/lef/*.lef]

# 导入PDK配置文件
set filename $::env(OPENLANE_ROOT)/$::env(PROJECT_NAME)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}

