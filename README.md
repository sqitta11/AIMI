# Focal Loss for nnU-Net

This is an implementation of the Focal loss, compatible with the nn-UNet architecture for the ULS23 Grand Challenge

The bash scripts can be used as an example to train the baseline model and the focal loss model for a 1000 epochs. 

## Path to the files:

The focal loss function can be found at: 

nnUNet/nnunetv2/training/loss/focalloss2.py

The nnUNetTrainer function (for 1000 epochs) can be found at:

/nnUNet/nnunetv2/training/nnUNetTrainer/variants/nnUNetTrainerFocalLoss1000.py

## Parameters

| Parameter | Description | Our choices
|---|---|---|
| `apply_nonlin`| Activation applied to logits before loss (e.g. softmax) | Softmax |
| `gamma` |  Focusing exponent. `0` = standard cross-entropy | 2 |
| `alpha` |  Weighting factor per class | [0.25, 0.75] |
| `do_bg` |  Include background class (channel 0) in loss computation (similar to dice.py functionality)| True |
| `smooth` | smoothing to prevent `log(0)` errors | 1e-5 |

