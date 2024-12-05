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
#figure(caption: "Ciruit")[#image("Cir_labeled.png")]
== Results
== Discussion
== Conclusion
== References
// https://en.wikipedia.org/wiki/Operational_amplifier
// https://toshiba.semicon-storage.com/eu/semiconductor/knowledge/faq/linear_opamp/why-is-feedback-used-in-op-amps.html
// 