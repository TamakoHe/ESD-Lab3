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
With that input, the output of our amplifier is a sine wave of $V_"pp"=960 m V$. Therefore, the gain is $960/4=240 V\/V$
=== Task 3&4
This task required to use our instrument amplifier to
measure the sensitivity of a weight sensor.
As mentioned before, this sensor can be modeled as  
a electronic bridge, when it is pressured, a voltage 
difference will occur. The voltage is then amplified 
and can be more accurately measured. When there is 
no load on the sensor, the $V_"pp"$ of amplified signal 
is $9 m V$, that is, the offset voltage $V_"offset"$.

Treat the sensor as a linear component, we can determine its 
characteristics just by plotting two pressure-voltage point.
However, in real case, the sensor is not ideal, so that its characteristics 
figure in not a line, multi points should be measured to get a more accurate description of the sensor's voltage response to pressure. 
We connected the sensor with voltage supply of $plus.minus 5V$ as the 
excitation voltage and load the sensor with the loads of different weight.
The amplified voltages and the loads' weights are listed in #ref(<table-wv>).
#figure(caption: "Weight-Voltage")[#table(align: 
center, columns: 2)[Weight (kg)][Amplified voltage(mV)][0][9][0.5][423][1][605][1.5][708][2][749][2.5][852][3][910][3.5][1005][4][1053][4.5][1105]] <table-wv>
/*
test_out[1]=423
test_out[2]=605
test_out[3]=708
test_out[4]=749
test_out[5]=852
test_out[6]=910
test_out[7]=1005
test_out[8]=1053
test_out[9]=1105
*/
The weight-voltage relation is displayed in #ref(<fig-6>).
#figure(caption: "Weight-voltage relation")[#image("plot1.png")]<fig-6>
By linear regression with least squares method, the sensitive is approximately 205.9 $"mV/kg"$
Divided by the overall gain, the sensitive of the load cell is $205.9/240 approx 0.858 "mV/kg"$ 
== Discussion
For task 2 and 3 that requiring constructing an instrument amplifier and 
measuring its characters. In our first attempt, we found that our op amp would output a sine wave of $V_"pp" approx 10 V$ whatever the input voltage was. Our DC power supply is $plus.minus 5$ which indicated that the gain  
is too high that the output would easily reach the limit. After solving the fatal issue that an $R_1$ was accidental short-cut, the output became 
normal. For complex circuit arrangements, designing a well-organized wire path is essential to the system's robustness. 

For task 3 and 4, we find that the load's weight-output voltage relation 
is not linear. The datasheet of this load cell says that the proper exciting
voltage is 3\~10 V. That might caused by large exciting voltage of $5-(-5)=10 V$ which was near the upper bound. 
== Conclusion
Through this lab session, we constructed an two-stage instrument amplifier 
with 3 op amp. And we also utilized this amplifier to measure the characters of a load cell. Amplifier which can make the signal larger without unexpected modification, is essential for signal processing and  
relative electronic industries. Understanding the principles of operation amplifier is the basic skills of electronic engineering.
== References
// https://en.wikipedia.org/wiki/Operational_amplifier
// https://toshiba.semicon-storage.com/eu/semiconductor/knowledge/faq/linear_opamp/why-is-feedback-used-in-op-amps.html
// 
// 
[1] Wikipedia, "Wikipedia," Online. Available: https://en.wikipedia.org/wiki/Operational_amplifier. [Accessed: Dec. 5, 2024].\
[2] Toshiba, "Why is feedback used in opamps," Online. Available: https://toshiba.semicon-storage.com/eu/semiconductor/knowledge/faq/linear_opamp/why-is-feedback-used-in-op-amps.html. [Accessed: Dec. 5, 2024].\
[3] Sensor and Control, "SC133 Micro Type Load Cell," Online. Available: https://akizukidenshi.com/goodsaffix/SC133-5kg%20load%20cell.pdf. [Accessed: Dec. 5, 2024].
== Appendix (Lab session photographs)
#image("2024-12-05-22-43-29.png")
#image("2024-12-05-22-43-52.png", height: 40%)
#image("2024-12-05-22-44-16.png")
#image("2024-12-05-22-44-49.png")
#image("2024-12-05-22-44-59.png")