#!/bin/bash -e
#SBATCH --partition=csedu
#SBATCH --qos=csedu-large
#SBATCH --account=cseduimc037
#SBATCH --gres=gpu:1
#SBATCH --mem=20G
#SBATCH --cpus-per-task=4
#SBATCH --time=48:00:00
#SBATCH --output=nnunet_focal_1000_epochs-%j.out
#SBATCH --error=nnunet_focal_1000_epochs-%j.err



source /vol/csedu-nobackup/course/IMC037_aimi/group18/quincy/unet_env/bin/activate

export nnUNet_raw="/vol/csedu-nobackup/course/IMC037_aimi/group18/quincy/nnUNet_Focal_loss_1000epochs/nnUNet_raw"
export nnUNet_preprocessed="/vol/csedu-nobackup/course/IMC037_aimi/group18/quincy/nnUNet_Focal_loss_1000epochs/nnUNet_preprocessed"
export nnUNet_results="/vol/csedu-nobackup/course/IMC037_aimi/group18/quincy/nnUNet_Focal_loss_1000epochs/nnUNet_results"

cd /vol/csedu-nobackup/course/IMC037_aimi/group18/quincy/nnUNet_Focal_loss_1000epochs/

nnUNetv2_train Dataset001_DeepLesion3D 3d_fullres 0 -tr nnUNetTrainerFocalLoss1000