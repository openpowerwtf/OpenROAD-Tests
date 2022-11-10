export NUM_CORES = 6
export OR_SEED = 8675309

export DESIGN_NICKNAME = a2p_top
export DESIGN_NAME = a2p
export PLATFORM    = sky130hd

export a2p_DIR = /data/projects/a2p-mpw7
export SCRIPT_DIR = $(shell dirname $(DESIGN_CONFIG))
export VERILOG_FILES_BLACKBOX = $(a2p_DIR)/verilog/rtl/a2p/wrapper/*.v \
                                $(a2p_DIR)/verilog/rtl/DFFRAM/wrapper/DFFRF_3R1W.v

export VERILOG_FILES = $(a2p_DIR)/verilog/rtl/defines.v \
                       $(a2p_DIR)/verilog/rtl/a2p/a2p_top_gpr.v \
                       $(a2p_DIR)/verilog/rtl/a2p/gpr.v \
                       $(VERILOG_FILES_BLACKBOX)

export SDC_FILE      = $(SCRIPT_DIR)/constraint.sdc

export DIE_AREA   = 0 0 2000 2000
export CORE_AREA  = 10 10 1990 1990

export PLACE_DENSITY ?= 0.20

export ABC_CLOCK_PERIOD_IN_PS = 5000
export ABC_SPEED = 1
#export ABC_AREA = 1

export ADDITIONAL_GDS_FILES = $(wildcard $(a2p_DIR)/macros/a2p/gds/*.gds) \
                              $(a2p_DIR)/macros/DFFRAM/gds/DFFRF_3R1W.gds

export ADDITIONAL_LEFS  = $(wildcard $(a2p_DIR)/macros/a2p/lef/*.lef) \
                          $(a2p_DIR)/macros/DFFRAM/lef/DFFRF_3R1W.lef

#export ADDITIONAL_LIBS = $(wildcard $(a2p_DIR)/macros/lib/*.lib)

# I/O
#export IO_CONSTRAINTS = io_constraints.tcl
# -group_pins [get_ports iBus*]
export PLACE_PINS_ARGS = -exclude left:* -exclude right:* -exclude top:* -exclude bottom:0-300 -exclude bottom:1500-3000

# not same format as openlane!!!  no comments?
export MACRO_PLACEMENT = $(SCRIPT_DIR)/macro_or.cfg
# enforce spacing/restrict placement
#export MACRO_PLACE_HALO ?= 5 5
#export MACRO_PLACE_CHANNEL ?= 100 100
# need this for larger macros sometimes (if bypass_ra_rb_rs moved to 200,700)?
# doesnt work
set ::env(ENABLE_DPO) 1
#set ::env(DPO_MAX_DISPLACEMENT) 2000

# CTS tuning
export CTS_BUF_CELL = sky130_fd_sc_hd__clkbuf_8
export CTS_BUF_DISTANCE = 600
export CTS_CLUSTER_DIAMETER = 100
export CTS_CLUSTER_SIZE = 30

export export SETUP_SLACK_MARGIN = 0.2

