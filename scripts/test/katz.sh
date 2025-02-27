#!/bin/sh

#SBATCH --nodes=1
#SBATCH --job-name=test_katz
#SBATCH --mail-type=ALL
#SBATCH --mail-user=atatomir5@gmail.com
#SBATCH --partition=small
#SBATCH --gres=gpu:1

CONSTRAINTS="${HOME}/3D-RetinaNet/constraints/full"
CLIP="10."
CENTRALITY="katz"
CCN_CUSTOM_ORDER=""

#VAL_SUBSETS="val_1"
VAL_SUBSETS="test"

EXP_NAME="resnet50I3D512-Pkinetics-b8s8x1x1-roadt1-h3x3x3-katzc10.000000-03-22-11-48-08x"

sh test.sh "$CONSTRAINTS" $CLIP $CENTRALITY "$CCN_CUSTOM_ORDER" $VAL_SUBSETS $EXP_NAME
