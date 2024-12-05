#set text(size: 15pt, font: "Times New Roman")
#align(center)[= Lab report]
#set math.equation(numbering: "(1)")
== Abstract
This lab session aimed to build an instrument amplifier 
and measure its characters such as offset voltage, differential gain and utilize it to determine the sensitivity of a pressure sensor.
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
$ A_v=V_"out"/(V_2-V_1)=(1+2 R_1/R_g) R_3/R_2 $<eq-1>
For the common mode circumstance, $V_1=V_2=V_"cm"$
both of the negative terminals of first-stage op amp's 
voltage level is equal to $V_"cm"$, the voltage across $R_g$ is zero. Thus, according to the virtual open, 
$I_-=0$, the current across $R_1$,$I_(R_1)=0$. $V_"out"=V_+=V_-=V_"cm"$, by analyzing the second stage 
op amp, the common gain is 
$ A_"CM"=R_3/R_2 $
$ "CMRR"=A_v/A_"CM"=(1+2 R_1/R_g) $  
In this lab session, the second stage gain needed to be 1 meaning $R_3=R_2$. 
As the overall gain should approximately be 200, $1+2 R_1/R_g$ should be 200, in this case, we chose $R_3=R_2=9.1 k Omega$, $R_1=9.1 k Omega, R_g=91 Omega$. So that, by 
substituting these value in #ref(<eq-1>).

For task of measuring the sensitive of a sensor, the two 
output terminals of the sensor should be connected to 
the two positive terminals of the first stage's op amps.
The sensor can be seen as a electronic bridge displayed in 
#figure(caption: "Electronic bridge")[#image("640.png")]
$R_x$ will vary when external pressure change. When there
is no external pressure, $R_x=R_3$ and electronic bridge 
is balance so that $V_"out"=0$. When there is external pressure, the bridge's balance will corrupt and $V_"out"$ 
will no longer be zero. By amplifying the slight change of $V_"out"$ by our instrument amplifier, the characters of 
this sensor can be accurately calculated.
== Results
=== Task 1
For task 1, to ensured that the resistors we used are 
that we wanted. We measured our chosen resistors 
with DMM, the measured values and the labeled values are 
shown in 
#figure(caption: "Task 1")[#table(align: center, columns: 2)[Measured][Labeled][$468Omega$][$470Omega$][$471Omega$][$470Omega$][$9.10 k Omega$][$9.02 k Omega$][$9.10k Omega$][$9.12 k Omega$][$9.10 k Omega$][$9.08 k Omega$][$9.10k Omega$][$9.11 k Omega$][$9.10k Omega$][$9.15 k Omega$][$9.10k Omega$][$9.07 k Omega$][$91 Omega$][$95 Omega$][$91 Omega$][$89 Omega$]] 
=== Task 2
This task aims to measure the offset voltage of our 
instrument amplifier. Setting $V_1=V_2=0$, then measure the $V_"out"$, our amplifier's offset voltage is $V_"offset"approx 80 mu V$
=== Task 3
This is the task that we will measure the gain and other 
basic characters of our amplifier. In this task, we will apply a small sine signal with frequency of 1kHZ, peak to peak voltage 
of $4m V$ on one input terminal of a first-stage op amp. 
The other input terminal of the first stage is connected to ground as #ref(<fig-5>). 
#figure(caption: "Task 3 configuration")[#image("2024-12-05-19-42-28.png")]<fig-5>
With that input, the output of our amplifier is a sine wave of $V_"pp"=$
=== Task 3&4
This task required to use our instrument amplifier to
measure the sensitivity of a weight sensor.
As mentioned before, this sensor can be modeled as  
a electronic bridge, when it is pressured, a voltage 
difference will occur. The voltage is then amplified 
and can be more accurately measured. When there is 
no load on the sensor, the $V_"pp"$ of amplified signal 
is $9 m V$, that is, the offset voltage $V_"offset"$.


== Discussion
== Conclusion
== References
// https://en.wikipedia.org/wiki/Operational_amplifier
// https://toshiba.semicon-storage.com/eu/semiconductor/knowledge/faq/linear_opamp/why-is-feedback-used-in-op-amps.html
// 