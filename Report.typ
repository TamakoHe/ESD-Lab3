#set text(size: 15pt, font: "Times New Roman")
#align(center)[= Lab report]
== Abstract
This lab session aimed to build an instrument amplifier 
and measure its characters such as offset voltage, differential gain and utilize it to determine the sensitivity of a weight sensor.
The choice of resistors were first calculated based on lab session's requirements. Then the circuit was built and verified and its features were measured. The sensor was then used as the amplifier's input and with the amplified voltage signal, the sensor's sensitivity can be worked out.
== Introduction
The operation amplifier(op amp) is an electronic component with a differential voltage input and a single output. It usually has a extremely high gain, high input impedance and low output impedance. 
With negative feedback network, op amp's characters can be controlled by external components such as resistors, which is simple and flexible for 
signal processing. This lab session required building an instrument amplifier with multi op amp satisfying the given conditions. 
#figure(caption: "Op amp")[#image("2024-12-05-14-24-19.png")]

For quick analysis, we can assume that the operation amplifier satisfies 
the virtual short meaning $V_+=V_-$, and virtual open indicating $I_+=I_-=0$.
#figure(caption: "Negative feedback example")[#image("2024-12-05-14-32-00.png", width: 60%)]
Take this negative feedback circuit as an example, 
as $V_+=V_-=0$, the voltage drop across $R_1$ is $V_"in"$, according to voltage division role:
$ V_"in"/R_1=(-V_"out")/R_2 $
$ V_"out"=-R_2/R_1 V_"in" $
==  Methods
In this lab session's design, 
#figure(caption: "Ciruit")[#image("Cir_labeled.png")]<fig-1>
we used three op amp and multi resistors to build an instrument amplifier. The circuit is shown in #ref(<fig-1>). To select the proper resistors, we conduct 
electronic analysis on this circuit. 

For the first stage of this instrument amplifier, by 
applying the virtual short and virtual open, the following 
equations can be derived:
$ I=(V_1-V_2)/R_g $
$ (V_"u1"-V_1)/R_1=(V_1-V_2)/R_g  $
$ V_"u1"-V_1=R_1/R_g (V_1-V_2) $
$ V_"u1"=V_1+R_1/R_g (V_1-V_2) $
$ (V_2-V_"u2")/R_1=(V_1-V_2)/R_g $
$ V_2-V_"u2"=R_1/R_g (V_1-V_2) $
$ V_"u2"=V_2-R_1/R_g (V_1-V_2) $
$ V_"u1"-V_"u2"=V_1-V_2+2 R_1/R_g (V_1-V_2) $
$ V_"u1"-V_"u2"=(1+2 R_1/R_g)(V_1-V_2) $
$ (V_"u1"-V_"u2")/(V_1-V_2)=1+ 2 R_1/R_g=A_"v1" $

For the second stage of this instrument amplifier, similarly, 
$ A_"CM"=-1 times (R_3/R_2) $
In summary, the differential gain is 
$ A_v=V_"out"/(V_2-V_1)=(1+2 R_1/R_g) R_3/R_2 $ 
For the common mode circumstance, $V_1=V_2=V_"cm"$
both of the negative terminals of first-stage op amp's 
voltage level is equal to $V_"cm"$, the voltage across $R_g$ is zero. Thus, according to the virtual open, 
$I_-=0$, the current across $R_1$,$I_(R_1)=0$. $V_"out"=V_+=V_-=V_"cm"$, by analyzing the second stage 
op amp, the common gain is 
$ A_"CM"=R_3/R_2 $
$ "CMRR"=A_v/A_"CM"=(1+2 R_1/R_g) $  

== Results
== Discussion
== Conclusion
== References
// https://en.wikipedia.org/wiki/Operational_amplifier
// https://toshiba.semicon-storage.com/eu/semiconductor/knowledge/faq/linear_opamp/why-is-feedback-used-in-op-amps.html
// 