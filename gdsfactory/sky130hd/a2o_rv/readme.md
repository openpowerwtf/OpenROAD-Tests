# Build RV

## Arrays

* need these:

   * tri_144x78_2r4w: lqrf

## Setup

* link verilog to a2o verilog
* link to this directory from OpenROAD-flow-scripts

```
ln -sf /projects/openroad-designs/gdsfactory/sky130hd/a2o_rv designs/sky130hd/a2o_rv
```

* set up PDK, etc. env
```
setup_openlane # alias to set PDK_ROOT, etc.
```

## Dummies

* use same reg array as xu

## Flow

* in OpenROAD-flow-scripts shell

```
export DESIGN_CONFIG=designs/sky130hd/a2o_rv/config.mk
make clean_all; make
make gui_final
```

* this may do better with individual macro builds to keep the dataflow intact:

   * fx0_rvs
   * fx1_rvs
   * lq_rvs
   * axu0_rvs
   * rf_byp

<image src="rv_1018.png">


