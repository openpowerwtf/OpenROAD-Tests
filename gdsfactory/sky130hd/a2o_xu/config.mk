
# dir name
export DESIGN_NICKNAME = a2o_xu
# module name
export DESIGN_NAME = xu

export PLATFORM    = sky130hd

export VERILOG_INCLUDE_DIRS = $(DESIGN_DIR)/verilog/trilib

export VERILOG_FILES_BLACKBOX = $(wildcard $(DESIGN_DIR)/*.v)

# cant wildcard trilib cuz yosys dont like dups - eventually split arrays from other comps
export VERILOG_FILES = $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_rlmreg_p.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_rlmlatch_p.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_plat.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_inv_nlats.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_reg*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_lcb*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_ex5_lcb.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_ao*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_nand*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_xor*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_csa*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_bthmx*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_pri*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_st_add*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_st_or*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_st_rot*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_st_cntlz*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_st_popcnt*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_debug*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_ser*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_direct*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_event*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_ecc*.v) \
							  $(wildcard $(DESIGN_DIR)/verilog/work/xu*.v) \
                       $(VERILOG_FILES_BLACKBOX)
# 							  $(wildcard $(DESIGN_DIR)/verilog/trilib/tri_st_mult*.v) \


export SDC_FILE      = $(DESIGN_DIR)/constraint.sdc

export DIE_AREA =   0  0   3000   3000
export CORE_AREA = 10 10   2990   2990

export PLACE_DENSITY ?= 0.25
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
