DATE="$(date +%m_%d_%Y-%H_%M_%S)"
STAGING_DIR=/volume1/R2D2/3_Histology/Microscope_Staging/
DEST_DIR=/volume1/R2D2/3_Histology/Images/0_Moved_From_Staging/
echo "$(date)"
echo "Transferring files from $STAGING_DIR to $DEST_DIR"

mv -v $STAGING_DIR/* $DEST_DIR
