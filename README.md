# Functional Triple Modular Redundancy on a Field-Programmable Gate Array

## Overview

This project seeks to be a proof-of-concept for the following:

- Prove that Functional Triple Modular Redundancy can improve the reliability of data collection in a near-space-like environment with moderate disturbances
- Implement typical microcontroller digital protocols in hardware
- Offer an insight into affordable means to produce space-grade hardware

This is a project that builds off the skills, knowledge and experience gained from the EIE 2nd Year course at Imperial, the Karman Space Programme rocketry initiative, and a CubeSat-related research placement at Imperial College London.

## Features

The following features are a work in progress:

- SPI peripheral
- FTMR of x3 SPI peripherals
- I2C peripheral
- CAN BUS peripheral
- UART peripheral
- Flash Storage

## Files

The repo contains the following folders:
- Vanilla: (in progress) contains normal hardware implementations of SPI, I2C, CAN BUS
- FTMR: (not started) contains FTMR implementation for SPI port

## Toolchain

This project uses the icefun iCE40-HX8K FPGA development board due to its affordability, ease of use, and the ability to program using open-source software.

The Apio toolkit is used to verify, simulate, build and program the FPGA.

Verilog-2005 is the only language to be fully supported by the open-source synthesis tool, Yosys, that is contained within Apio.

## Usage

Navigate to the desired folder in Command Prompt and type the following:

``apio verify`` - checks for errors
``apio sim`` - simulates waveforms of signals in GTKWave
``apio build`` - compiles project (note that for the first time, you may have a prompt to set the target board - this must be set to icefun)
``apio upload`` - uploads project
