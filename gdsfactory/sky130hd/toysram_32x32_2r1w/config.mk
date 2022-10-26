export DESIGN_NICKNAME = toysram_32x32_2r1w
export DESIGN_NAME = toysram_32x32_2r1w
export PLATFORM    = sky130hd

export VERILOG_FILES_BLACKBOX = ./designs/$(PLATFORM)/$(DESIGN_NAME)/toysram_bare_32x32_2r1w.v

export VERILOG_FILES = ./designs/$(PLATFORM)/$(DESIGN_NAME)/toysram_32x32_2r1w.v \
                       ./designs/$(PLATFORM)/$(DESIGN_NAME)/address_clock_sdr_2r1w_32.v \
							  ./designs/$(PLATFORM)/$(DESIGN_NAME)/predecode_sdr_32.v \
                       $(VERILOG_FILES_BLACKBOX)

export SDC_FILE      = ./designs/$(PLATFORM)/$(DESIGN_NAME)/constraint.sdc

export DIE_AREA = 0 0 250 250
export CORE_AREA = 10 10 240 240

export PLACE_DENSITY ?= 0.80

export ABC_CLOCK_PERIOD_IN_PS = 1500
export ABC_SPEED = 1
#export ABC_AREA = 1

export ADDITIONAL_GDS_FILES = $(wildcard ./designs/$(PLATFORM)/$(DESIGN_NAME)/toysram_bare_32x32_2r1w.gds)
export ADDITIONAL_LEFS  = $(wildcard ./designs/$(PLATFORM)/$(DESIGN_NAME)/toysram_bare_32x32_2r1w.lef)
#export ADDITIONAL_LIBS = $(wildcard ./designs/$(PLATFORM)/$(DESIGN_NAME)/toysram_bare_32x32_2r1w.lib)

# I/O
export HAS_IO_CONSTRAINTS = 1

# have to figure out how to put them by name
export PLACE_PINS_ARGS = -exclude top:* -exclude bottom:*
# -group_pins {rd_dat_0 rd_dat_1}

export MACRO_PLACEMENT = ./designs/$(PLATFORM)/$(DESIGN_NAME)/macro.cfg

# CTS tuning
export CTS_BUF_CELL = sky130_fd_sc_hd__clkbuf_8
export CTS_BUF_DISTANCE = 600
export CTS_CLUSTER_DIAMETER = 100
export CTS_CLUSTER_SIZE = 30

export export SETUP_SLACK_MARGIN = 0.2
