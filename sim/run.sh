#!/bin/bash
mkdir -p waves
iverilog -o sim/sim_out \
  rtl/cache_controller.v \
  rtl/fault_injector.v \
  rtl/recovery_fsm.v \
  rtl/parity_checker.v \
  tb/tb_top.v

vvp sim/sim_out

echo ""
echo "Simulation done. Open waves/dump.vcd in Surfer to view waveforms."