# Functional Triple Modular Redundancy on a Field-Programmable Gate Array

## Overview

This project seeks to:

- Demonstrate Functional Triple Modular Redundancy working in an FPGA device, as described in [an ESA-backed research paper](http://microelectronics.esa.int/techno/fpga_003_01-0-2.pdf)
- Reaffirm that FTMR improve the reliability of data collection in a near-space-like environment with moderate disturbances
- Extend the initial scope of the report by applying FTMR to digital communication protocols, namely SPI
- Prove that any potential gains from this method are independent of the hardware and firmware used
- Offer an insight into affordable means to produce space-grade hardware

## Features

The following features are a work in progress:

- SPI peripheral
- UART peripheral
- FTMR of x3 SPI peripherals

## Files

The repo contains the following folders:
- Vanilla: (in progress) contains normal hardware implementations of SPI, I2C, CAN BUS
- FTMR: (not started) contains FTMR implementation for SPI port

## Toolchain

This project uses the iceFUN iCE40-HX8K FPGA development board due to its affordability, ease of use, and the ability to program using open-source software.

The Apio toolkit is used to verify, simulate, build and program the FPGA.

Verilog-2005 is the only language to be fully supported by the open-source synthesis tool, Yosys, that is contained within Apio.

## Usage

Navigate to the desired folder in Command Prompt and type the following:

``apio verify`` - checks for errors

``apio sim`` - simulates waveforms of signals in GTKWave

``apio build`` - compiles project (note that for the first time, a prompt will ask you to set the target board - this must be set to icefun)

``apio upload`` - uploads project
