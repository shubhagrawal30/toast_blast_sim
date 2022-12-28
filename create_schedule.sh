#!/bin/bash

# changed to 4 degree patch
target_ra=180.0
target_dec=-9
target_width=4

toast_ground_schedule \
--site-lat -45.0 \
--site-lon 170.0 \
--site-alt 37000 \
`# This is a hack for weather stuff` \
--site-name wanaka_nz \
--telescope BLAST-O \
--patch-coord C \
--el-min-deg 25 \
--el-max-deg 55 \
--start "2027-03-31 07:00:00" \
--stop "2027-03-31 17:00:00" \
--ces-max-time-s 600 \
--gap-small-s 0 \
--patch SIMTARGET,1.0,${target_ra},${target_dec},${target_width} \
--out ./schedules/blast_schedule_all.txt \
--debug

toast_ground_schedule \
--site-lat -45.0 \
--site-lon 170.0 \
--site-alt 37000 \
`# This is a hack for weather stuff` \
--site-name wanaka_nz \
--telescope BLAST-O \
--patch-coord C \
--el-min-deg 25 \
--el-max-deg 55 \
--start "2027-03-31 08:00:00" \
--stop "2027-03-31 09:30:00" \
--ces-max-time-s 600 \
--gap-small-s 0 \
--patch SIMTARGET,1.0,${target_ra},${target_dec},${target_width} \
--out ./schedules/blast_schedule_rise.txt \
--debug

toast_ground_schedule \
--site-lat -45.0 \
--site-lon 170.0 \
--site-alt 37000 \
`# This is a hack for weather stuff` \
--site-name wanaka_nz \
--telescope BLAST-O \
--patch-coord C \
--el-min-deg 25 \
--el-max-deg 55 \
--start "2027-03-31 9:30:00" \
--stop "2027-03-31 14:00:00" \
--ces-max-time-s 600 \
--gap-small-s 0 \
--patch SIMTARGET,1.0,${target_ra},${target_dec},${target_width} \
--out ./schedules/blast_schedule_zenith.txt \
--debug

toast_ground_schedule \
--site-lat -45.0 \
--site-lon 170.0 \
--site-alt 37000 \
`# This is a hack for weather stuff` \
--site-name wanaka_nz \
--telescope BLAST-O \
--patch-coord C \
--el-min-deg 25 \
--el-max-deg 55 \
--start "2027-03-31 14:00:00" \
--stop "2027-03-31 16:30:00" \
--ces-max-time-s 600 \
--gap-small-s 0 \
--patch SIMTARGET,1.0,${target_ra},${target_dec},${target_width} \
--out ./schedules/blast_schedule_set.txt \
--debug
