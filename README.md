# Skin Disease Detector

An experimental skin disease image-classification application written in Scheme using LambdaNative.

## About

Skin Disease Detector uses a lightweight convolutional neural network (CNN) to classify images into categories represented in its training dataset. The project explores on-device image classification for mobile and resource-constrained devices.

The model was developed with TensorFlow and Keras, converted to a lightweight format, and integrated into the LambdaNative Android application using TinyMaix.

## Features

- Classifies skin images into eight categories represented in the training dataset.
- Performs inference locally on the device, without requiring a continuous internet connection.
- Uses a lightweight CNN designed for mobile and embedded deployment.
- Built with Scheme and LambdaNative, with native C integration.

## Dataset

The model was trained using the [Skin Disease Dataset by Subir Biswas on Kaggle](https://www.kaggle.com/datasets/subirbiswas19/skin-disease-dataset).

The dataset covers these categories:

- Bacterial infections: Cellulitis and Impetigo
- Fungal infections: Athlete’s Foot, Nail Fungus, and Ringworm
- Parasitic infections: Cutaneous Larva Migrans
- Viral infections: Chickenpox and Shingles

Classification results are limited to the dataset and categories used during training.

## Model and deployment

The model-development workflow involves:

1. Training a CNN using the skin disease image dataset.
2. Converting the trained model to TensorFlow Lite format.
3. Converting the quantized model for TinyMaix.
4. Integrating the model into the LambdaNative application.

The architecture uses three convolutional layers with strided convolutions, global average pooling, and 1×1 convolutional layers for classification.

## Download

[Download Skin Disease Detector for Android (APK)](https://github.com/AgoeZero/lambdanative-skin-disease-detector/actions/runs/44742572366/artifacts/14632395957)

This link points to a specific GitHub Actions artifact and may expire. Replace it with a release download link if you publish the APK as a GitHub Release asset.

## Technology stack

- **Scheme:** Application development with LambdaNative
- **C:** Native application and inference integration
- **Python:** Model training and conversion utilities
- **TensorFlow / Keras:** Model development and training
- **TensorFlow Lite:** Model conversion and quantization
- **TinyMaix:** Lightweight neural-network inference

## Third-party software

### DemoCamera

Portions of this project are based on DemoCamera, originally developed at the University of British Columbia.

### TinyMaix

This project uses the [TinyMaix library](https://github.com/sipeed/TinyMaix) by Lieff Lee and contributors. TinyMaix is distributed under the Apache License 2.0. See the relevant third-party licensing information for details.

## Support

This work is supported by the [NLnet Foundation](https://nlnet.nl/) through the [LambdaNative F-Droid integration project](https://nlnet.nl/project/F-Droid-LambdaNative/).

![NLnet Foundation logo](images/NLnetLogo.png)

## Disclaimer

This application is intended for educational, research, and experimental purposes only. It is not a medical diagnostic tool and should not be used as a substitute for professional medical advice, diagnosis, or treatment. Always consult a qualified healthcare professional for the assessment and diagnosis of skin conditions.

## License

This project is licensed under the BSD 2-Clause License. See the `LICENSE` file for details.
