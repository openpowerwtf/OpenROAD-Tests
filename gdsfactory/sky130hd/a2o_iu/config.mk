
# dir name
export DESIGN_NICKNAME = a2o_iu
# module name
export DESIGN_NAME = iuq

export PLATFORM = sky130hd

export VERILOG_INCLUDE_DIRS = $(DESIGN_DIR)/verilog/trilib

export VERILOG_FILES_BLACKBOX = $(wildcard $(DESIGN_DIR)/*.v)

# cant wildcard trilib cuz yosys dont like dups - eventually split arrays from other comps
export VERILOG_FILES = $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_rlmreg_p.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_rlmlatch_p.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_lcb*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_plat.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_slat*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_nlat*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_debug*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_event*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_inv*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_nand*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_nor*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_xor*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_aoi*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_bht_512x4_1r1w.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_bht_1024x8_1r1w.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_ser*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_direct*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_agecmp.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/work/iuq*.v) \
                       $(VERILOG_FILES_BLACKBOX)

export SDC_FILE      = $(DESIGN_DIR)/constraint.sdc

export DIE_AREA =   0  0   3500   4500
export CORE_AREA = 10 10   3490   4490

export PLACE_DENSITY ?= 0.20
export USE_FILL 0

export ABC_CLOCK_PERIOD_IN_PS = 2000
export ABC_SPEED = 1
#export ABC_AREA = 1

export ADDITIONAL_GDS_FILES = $(wildcard $(DESIGN_DIR)/*.gds)
export ADDITIONAL_LEFS  = $(wildcard $(DESIGN_DIR)/*.lef)
#export ADDITIONAL_LIBS = $(wildcard ./designs/$(PLATFORM)/$(DESIGN_NAME)/*.lib)

# I/O
# wtf do i now need this to avoid replacer error about init_penalty??????
#export HAS_IO_CONSTRAINTS = 1
# have to figure out how to put them by name
#export PLACE_PINS_ARGS = -exclude right:* -exclude top:* -exclude bottom:0-500

export MACRO_PLACEMENT = $(DESIGN_DIR)/macro.cfg

export CELL_PAD_IN_SITES_GLOBAL_PLACEMENT = 4
export CELL_PAD_IN_SITES_DETAIL_PLACEMENT = 2

# CTS tuning
export CTS_BUF_CELL = sky130_fd_sc_hd__clkbuf_8
export CTS_BUF_DISTANCE = 600
export CTS_CLUSTER_DIAMETER = 100
export CTS_CLUSTER_SIZE = 30

export export SETUP_SLACK_MARGIN = 0.2
