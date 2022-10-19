# OpenROAD Experiments

### a2o functional units

  * dummy macros for arrays, multipliers (i/o's, but not to size)
  * sky130hd pdk
  * no i/o preplace (except macros are gen'd with E-inputs and W-outputs)
  * no set_input_delay, set_output_delay constraints on macro pins

<br>
<div>
<figure>
<figcaption>IU 3500x4500</figcaption>
<image src="gdsfactory/sky130hd/a2o_iu/iu_1018.png" width="33%">
</figure>

<figure>
<image src="gdsfactory/sky130hd/a2o_lq/lq_1019.png" width="33%">
<figcaption>LQ 3500x5500</figcaption>
</figure>
</div>

<div>
<figure>
  <figcaption>RV 2000x3000</figcaption>
  <image src="gdsfactory/sky130hd/a2o_rv/rv_1018.png" width="33%">
</figure>
</div>

<div>
<figure>
<figcaption>XU 3000x3000</figcaption>
<image src="gdsfactory/sky130hd/a2o_xu/xu_1017.png" width="33%">
</figure>
<figure>
<image src="gdsfactory/sky130hd/a2o_fu/fu_1018.png" width="33%">
<figcaption>FU 2000x3000</figcaption>
</figure>
</div>
<br>
 
* units should eventually be built with at least one extra level of hierarchy to control layout and timing

 
