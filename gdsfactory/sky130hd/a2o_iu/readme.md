# Build IU

## Arrays

* need these:

   * tri_512x16_1r1w_1 (bht)
   * tri_64x72_1r1w (btb)
   * tri_iuq_cpl_arr (completion)
   * tri_cam_16x143_1r1w1c (erat)
   * tri_512x162_4w_0 (dc)
   * tri_128x34_4w_1r1w (dir)

## Setup

* link verilog to a2o verilog
* link to this directory from OpenROAD-flow-scripts

```
ln -sf /projects/openroad-designs/gdsfactory/sky130hd/a2o_iu designs/sky130hd/a2o_iu
```

* set up PDK, etc. env
```
setup_openlane # alias to set PDK_ROOT, etc.
```

## Dummies

* arrays

## Flow

* in OpenROAD-flow-scripts shell

```
export DESIGN_CONFIG=designs/sky130hd/a2o_iu/config.mk
make clean_all; make
make gui_final
```

* need to fix gdsDummy to grab parameters and put in gen'd verilog (iuq_cpl)
* but yosys is gen's something weird in 1_synth.v

```
  \$paramod$4ff189b92e8676c02570ccfc5e3a837386806ee6\tri_iuq_cpl_arr  \iuq_cpl_top0.iuq_cpl0.iuq_cpl_arr  (
```

* if i delete the extra stuff on front, floorplan continues (was ending cuz macro.cfg didn't match, but it also wasn't find that gds/lef earlier)


* need to get macros placed good enough and overall size correct to route and not blow memory
* struggling but completed with 16G; could do these separately (esp. ifetch)

   * iuq_ifetch (3 arrays)
   * iuq_cpl (1 array)
   * iuq_slice


<image src="iu_1018.png">


