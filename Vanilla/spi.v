module spi (
    input clk,
    input miso,
    output mosi,
    output sck,
    output cs
);

// SPI

//SCK - outputting a clock signal - let's say 100kHz
//CS - high by default, switches low to read
//MOSI - output
//MISO - input

//SCK - need a way to divide down
//flip flop in divide-by-2 mode ig
//todo: define ff module

//mosi/miso - implement shift-in shift-out to r/w a byte one bit at a time
//MPU9250 - data shifted on falling edge, latched rising edge
//SHIFT REGISTER from FLIP-FLOPS
//store all important constants for registers
//store imu output in flash memory


endmodule
