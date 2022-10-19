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
ln -sf /projects/openroad-designs/gdsfactory/sky130hd/a2o_lq designs/sky130hd/a2o_lq
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
export DESIGN_CONFIG=designs/sky130hd/a2o_lq/config.mk
make clean_all; make
make gui_final
```

* need to get macros placed good enough and overall size correct to route and not blow memory
* struggling but completed with 16G; could do these separately (esp. ifetch)

   * iuq_ifetch (3 arrays)
   * iuq_cpl (1 array)
   * iuq_slice


<image src="lq_1018.png">


