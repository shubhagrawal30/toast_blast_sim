#!/bin/bash

# changed to 6.5 degree patch
target_ra=82.0
target_dec=-45.0
target_width=6.5

toast_ground_schedule \
--site-lat -44.7 \
--site-lon 169.15 \
--site-alt 36500 \
`# This is a hack for weather stuff` \
--site-name wanaka_nz \
--telescope BLAST-O \
--patch-coord C \
--el-min-deg 30 \
--el-max-deg 80 \
--start "2027-03-19 00:00:00" \
--stop "2027-04-10 00:00:00" \
--ces-max-time-s 1200 \
--fp-radius-deg 0.75 \
--patch SIMTARGET,1.0,${target_ra},${target_dec},${target_width} \
--out blast_schedule.txt \
--debug
