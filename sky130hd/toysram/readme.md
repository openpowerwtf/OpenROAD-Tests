# Build multiple versions of 64x24

## General

* link to these directories from OpenROAD-flow-scripts/flow

## Versions

### RTL logical + RTL hard + RTL 16x12

* /rtl_rtl_rtl

* 16x12 is compiled (ff's)

```
# point here from flow
ln -s ~/projects/OpenROAD-Tests/sky130hd/toysram/rtl_rtl_rtl designs/sky130hd/toysram_rtl_rtl_rtl
export DESIGN_CONFIG=designs/sky130hd/toysram_rtl_rtl_rtl/config.mk
make clean_all; make
make gui_final
```
<image src="./rtl_rtl_rtl/gui_final.png">

### dummy 16x12 in wrapper

* /toysram_16x12

* generate 16x12 with gdsDummy; 33x22

```
toydummy
```

```
# point here from flow
ln -s ~/projects/OpenROAD-Tests/sky130hd/toysram/toysram_16x12 designs/sky130hd/toysram_16x12
export DESIGN_CONFIG=designs/sky130hd/toysram_16x12/config.mk
make clean_all; make
make gui_final
```
<image src="./toysram_16x12/gui_final.png">

### RTL logical + RTL hard + custom 16x12

* /rtl_rtl_dum

* 16x12 is dummy gds/lef from above

```
# point here from flow
ln -s ~/projects/OpenROAD-Tests/sky130hd/toysram/rtl_rtl_dum designs/sky130hd/toysram_rtl_rtl_dum
export DESIGN_CONFIG=designs/sky130hd/toysram_rtl_rtl_dum/config.mk
make clean_all; make
make gui_final
```
<image src="./rtl_rtl_dum/gui_final.png">


### RTL logical + netlist hard + custom 16x12

* /rtl_net_dum
* macros not done separately first


#### hierarchy

* ra_64x72_2r1w

   * address_clock_sdr_2r1w_64

      * predecode_sdr_64

   * (3) regfile_shard_64x24_2r1w_comp

      * (8) toysram_16x12
      * (2) wordlines_comp_32
      * (4) local_eval_comp
      * (1) inout_comp


