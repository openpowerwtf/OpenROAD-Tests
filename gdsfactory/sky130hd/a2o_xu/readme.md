# Build XU

## Arrays

* need these:

   * tri_144x78_2r4w: gpr0,gpr1 (4R4W GPR Pool; required depth depends on pool size and ST/SMT)
   * tri_64x72_1r1w: xu_spr_aspr (SPR)

## Setup

* link to this directory from OpenROAD-flow-scripts

```
ln -sf /projects/openroad-designs/gdsfactory/sky130hd/a2o_xu designs/sky130hd/a2o_xu
```

* set up PDK, etc. env
```
setup_openlane # alias to set PDK_ROOT, etc.
```

## Dummies

* create dummy array gds, lef, (lib when OR will use it for timing)

```
gdsDummy

export DESIGN=tri_144x78_2r4w
magic -noconsole -dnull -rcfile scripts/sky130B.magicrc < scripts/lef.tcl

export DESIGN=tri_64x72_1r1w
magic -noconsole -dnull -rcfile scripts/sky130B.magicrc < scripts/lef.tcl
```

## Flow (won't GRT)

* in OpenROAD-flow-scripts shell

```
export DESIGN_CONFIG=designs/sky130hd/a2o_xu/config.mk
make clean_all; make

...

[INFO GRT-0053] Routing resources analysis:
          Routing      Original      Derated      Resource
Layer     Direction    Resources     Resources    Reduction (%)
---------------------------------------------------------------
li1        Vertical            0             0          0.00%
met1       Horizontal   41992020      24305274          42.12%
met2       Vertical     31494015      20850440          33.80%
met3       Horizontal   20996010      14692848          30.02%
met4       Vertical     12597606       7373188          41.47%
met5       Horizontal    4199202       2096704          50.07%
---------------------------------------------------------------

[INFO GRT-0101] Running extra iterations to remove overflow.
[INFO GRT-0103] Extra Run for hard benchmark.
[WARNING GRT-0230] Congestion iterations cannot increase overflow, reached the maximum number of times the total overflow can be increased.
[INFO GRT-0197] Via related to pin nodes: 430174
[INFO GRT-0198] Via related Steiner nodes: 14353
[INFO GRT-0199] Via filling finished.
[INFO GRT-0111] Final number of vias: 580829
[INFO GRT-0112] Final usage 3D: 5419325
[ERROR GRT-0118] Routing congestion too high. Check the congestion heatmap in the GUI.
Error: global_route.tcl, 19 GRT-0118
Command exited with non-zero status 1
Elapsed time: 31:09.34[h:]min:sec. CPU time: user 1851.41 sys 6.58 (99%). Peak memory: 9865224KB.
make: *** [Makefile:569: results/sky130hd/a2o_xu/base/5_1_grt.odb] Error 1

```

## More dummies!

* start with likely culprit

```
gdsDummy

# arrays
export DESIGN=tri_144x78_2r4w
magic -noconsole -dnull -rcfile scripts/sky130B.magicrc < scripts/lef.tcl

export DESIGN=tri_64x72_1r1w
magic -noconsole -dnull -rcfile scripts/sky130B.magicrc < scripts/lef.tcl

# mul - probs the only other trilib'er to do
export DESIGN=tri_st_mult
magic -noconsole -dnull -rcfile scripts/sky130B.magicrc < scripts/lef.tcl


[INFO GRT-0053] Routing resources analysis:
          Routing      Original      Derated      Resource
Layer     Direction    Resources     Resources    Reduction (%)
---------------------------------------------------------------
li1        Vertical            0             0          0.00%
met1       Horizontal   41992020      24319315          42.09%
met2       Vertical     31494015      20850912          33.79%
met3       Horizontal   20996010      14692844          30.02%
met4       Vertical     12597606       7373188          41.47%
met5       Horizontal    4199202       2096704          50.07%
---------------------------------------------------------------

[INFO GRT-0101] Running extra iterations to remove overflow.
[INFO GRT-0103] Extra Run for hard benchmark.
[WARNING GRT-0230] Congestion iterations cannot increase overflow, reached the maximum number of times the total overflow can be increased.
[INFO GRT-0197] Via related to pin nodes: 366082
[INFO GRT-0198] Via related Steiner nodes: 8747
[INFO GRT-0199] Via filling finished.
[INFO GRT-0111] Final number of vias: 490471
[INFO GRT-0112] Final usage 3D: 4825660
[ERROR GRT-0118] Routing congestion too high. Check the congestion heatmap in the GUI.
Error: global_route.tcl, 19 GRT-0118
Command exited with non-zero status 1
Elapsed time: 34:01.31[h:]min:sec. CPU time: user 2034.79 sys 4.14 (99%). Peak memory: 9917848KB.
```

### Getting results

<image src='xu_1017.png' />

* getting these for xer, lr, ctr - these are xu_rf components

```
logs/sky130hd/a2o_xu/base/1_1_yosys.log:Warning: Wire xu.\xer.w4d [9] is used but has no driver.
```

* something to do with parameter for write ports? xer doesn't list port 1 as problem

```
verilog/work/xu.v:   xu_rf #(.WIDTH(10), .PAR_WIDTH(2),  .POOL_ENC(`XER_POOL_ENC + `THREADS_POOL_ENC), .POOL(`XER_POOL * `THREADS), .RD_PORTS(3 + `THREADS), .WR_PORTS(2), .BYPASS(1)) xer(

verilog/work/xu.v:   xu_rf #(.WIDTH(`GPR_WIDTH), .PAR_WIDTH(`GPR_WIDTH/8),   .POOL_ENC(`CTR_POOL_ENC + `THREADS_POOL_ENC), .POOL(`CTR_POOL * `THREADS), .RD_PORTS(1), .WR_PORTS(1), .BYPASS(1)) ctr(

verilog/work/xu.v:   xu_rf #(.WIDTH(`GPR_WIDTH), .PAR_WIDTH(`GPR_WIDTH/8),  .POOL_ENC(`BR_POOL_ENC + `THREADS_POOL_ENC), .POOL(`BR_POOL * `THREADS), .RD_PORTS(2), .WR_PORTS(1), .BYPASS(1)) lr(
```



## To Do

* constraints

   * dc all the test sigs
   * xu i/o
   * try array i/o

* likely break up into macros for better wiring and simplified top-level gen/timing ***already started with extra dummies***

   * GPR (wraps 2 arrays to make 4R4W)
   * MUL
   * ALU
   * ALUL (rot/cntlz/..)
   * BYP? (to get good bus layout
   * DIV?
   * SPR?

* may want to split xu0/xu1

   * xu1 is only alu,byp,dec (but byp/dec are unique for xu0/xu1)

