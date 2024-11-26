#!/bin/bash

# Bash Script to transfer files from staging folder 

DATE="$(date +%m_%d_%Y-%H_%M_%S)"


DEST_DIR=/volume1/R2D2/3_Histology/Images/0_Moved_From_Staging/
STAGING_DIR=/volume1/R2D2/3_Histology/Microscope_Staging/
FILES_TO_MOVE=$STAGING_DIR/*

LOG_DIR=/volume1/R2D2/7_Misc/Scripts/Logs/Microscope_Staging
LOG_FILE=$LOG_DIR/$DATE.txt

echo "Microscope Staging Transfer: $DATE" | tee -a $LOG_FILE
echo "Transferring files from $STAGING_DIR to $DEST_DIR" | tee -a $LOG_FILE

echo "=================================================="

mv -v $FILES_TO_MOVE $DEST_DIR 2>&1 | tee -a $LOG_FILE
