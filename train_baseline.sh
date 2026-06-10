#!/bin/bash -e
#SBATCH --partition=csedu
#SBATCH --qos=csedu-large
#SBATCH --account=cseduimc037
#SBATCH --gres=gpu:1
#SBATCH --mem=20G
#SBATCH --cpus-per-task=4
#SBATCH --time=48:00:00
#SBATCH --output=nnunet_trainbaseline-%j.out
#SBATCH --error=nnunet_trainbaseline-%j.err
#SBATCH --mail-user=charlynnosch
#SBATCH --mail-type=BEGIN,END,FAIL

source /vol/csedu-nobackup/course/IMC037_aimi/group18/charlynn/venv/bin/activate

export nnUNet_raw=/vol/csedu-nobackup/course/IMC037_aimi/group18/charlynn/nnUNet_raw
export nnUNet_preprocessed=/vol/csedu-nobackup/course/IMC037_aimi/group18/charlynn/nnUNet_preprocessed
export nnUNet_results=/vol/csedu-nobackup/course/IMC037_aimi/group18/charlynn/nnUNet_results

cd /vol/csedu-nobackup/course/IMC037_aimi/group18/charlynn

nnUNetv2_train Dataset001_DeepLesion3D 3d_fullres 0 -tr nnUNetTrainer
