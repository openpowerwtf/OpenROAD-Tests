# Build FU

## Arrays

* need these:

   * tri_144x78_2r4w: fpr0,fpr1 (4R4W FPR Pool; required depth depends on pool size and ST/SMT)

## Setup

* link verilog to a2o verilog
* link to this directory from OpenROAD-flow-scripts

```
ln -sf /projects/openroad-designs/gdsfactory/sky130hd/a2o_fu designs/sky130hd/a2o_fu
```

* set up PDK, etc. env
```
setup_openlane # alias to set PDK_ROOT, etc.
```

## Dummies

* tri_144x78_2r4w
* tri_fu_mul

## Flow

* in OpenROAD-flow-scripts shell

```
export DESIGN_CONFIG=designs/sky130hd/a2o_fu/config.mk
make clean_all; make
make gui_final
```

<image src="fu_1018.png">

