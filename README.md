Parallel-in/ serial-out shift registers do everything that the previous serial-in/ serial-out shift registers do plus input data to all stages simultaneously.

The parallel-in/ serial-out shift register stores data, shifts it on a clock by clock basis, and delays it by the number of stages times the clock period.

In addition, parallel-in/ serial-out really means that we can load data in parallel into all stages before any shifting ever begins.

This is a way to convert data from a parallel format to a serial format. By parallel format we mean that the data bits are present simultaneously on individual wires, one for each data bit.

**Schematic Diagram**

![Screenshot (64)](https://github.com/Shanmukha190602/Sequential_RTLDay8/assets/118514275/a48442f7-7c2b-424f-ae11-a2ec98bcb3db)

**Simulation and Result**

![Screenshot (65)](https://github.com/Shanmukha190602/Sequential_RTLDay8/assets/118514275/0503cee1-91be-45e5-b473-c63cc654842b)

![Screenshot (66)](https://github.com/Shanmukha190602/Sequential_RTLDay8/assets/118514275/72efcb8b-00d5-4af0-9e82-4e36a38d86b7)

