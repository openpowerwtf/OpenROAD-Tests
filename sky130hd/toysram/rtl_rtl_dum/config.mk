# plain rtl + 16x12 dummy

export OR_SEED = 8675309

export DESIGN_NICKNAME = ra_64x72_2r1w
export DESIGN_NAME = ra_64x72_2r1w
export PLATFORM    = sky130hd
export SCRIPT_DIR = $(shell dirname $(DESIGN_CONFIG))

export SRC_DIR = $(SCRIPT_DIR)/src/array

export VERILOG_FILES_BLACKBOX = $(SCRIPT_DIR)/toysram_16x12.v

export VERILOG_FILES = $(SRC_DIR)/ra_64x72_2r1w.v \
                       $(SRC_DIR)/address_clock_sdr_2r1w_64.v \
                       $(SRC_DIR)/predecode_sdr_64.v \
                       $(SRC_DIR)/regfile_64x24_2r1w.v \
                       $(VERILOG_FILES_BLACKBOX)

export SDC_FILE      = $(SCRIPT_DIR)/constraint.sdc

export DIE_AREA   =  0  0   300  300
export CORE_AREA  = 10 10   290  290

export PLACE_DENSITY ?= 0.9

export ABC_CLOCK_PERIOD_IN_PS = 2000
export ABC_SPEED = 1
#export ABC_AREA = 1

export ADDITIONAL_GDS_FILES = $(SCRIPT_DIR)/toysram_16x12.gds
export ADDITIONAL_LEFS  = $(SCRIPT_DIR)/toysram_16x12.lef
#export ADDITIONAL_LIBS = $(wildcard $(a2p_DIR)/macros/lib/*.lib)

# I/O
#export IO_CONSTRAINTS = io_constraints.tcl
# -group_pins [get_ports iBus*]
#export PLACE_PINS_ARGS = -exclude left:* -exclude right:* -exclude top:* -exclude bottom:0-300 -exclude bottom:1500-3000

# not same format as openlane!!!  no comments?
export MACRO_PLACEMENT = $(SCRIPT_DIR)/macro.cfg
# enforce spacing/restrict placement
#export MACRO_PLACE_HALO ?= 20 20
#export MACRO_PLACE_CHANNEL ?= 100 100
# need this for larger macros sometimes (if bypass_ra_rb_rs moved to 200,700)?
# doesnt work
#set ::env(ENABLE_DPO) 1
#set ::env(DPO_MAX_DISPLACEMENT) 2000

# CTS tuning
#export CTS_BUF_CELL = sky130_fd_sc_hd__clkbuf_8
#export CTS_BUF_DISTANCE = 600
#export CTS_CLUSTER_DIAMETER = 100
#export CTS_CLUSTER_SIZE = 30

export export SETUP_SLACK_MARGIN = 0.2

