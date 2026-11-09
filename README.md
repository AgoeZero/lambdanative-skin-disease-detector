
# Skin Disease Detector

A skin disease classification application written in Scheme using [LambdaNative](https://github.com/bkmgit/lambdanative).

## Project Description

**Skin Disease Detector** is a deep learning application designed to classify skin diseases from images using a lightweight Convolutional Neural Network (CNN).

The application combines deep learning with lightweight embedded inference to bring image-based skin disease classification to mobile and resource-constrained devices.

The project uses a custom-trained CNN model developed with TensorFlow and Keras, which is converted for deployment using TinyMaix.

## Features

The project provides the following capabilities:

- **Skin Disease Classification:** Classify skin images into disease categories using a custom-trained CNN model.
- **Lightweight Model:** Use an efficient CNN architecture designed for resource-constrained devices.
- **Offline Inference:** Perform image classification locally without requiring a continuous internet connection.
- **Mobile Deployment:** Run the classifier within an Android application built using LambdaNative.
- **Multiple Classes:** Support eight skin disease categories from the training dataset.

## Dataset

The model was trained using the publicly available [Skin Disease Dataset](https://www.kaggle.com/datasets/subirbiswas19/skin-disease-dataset) by Subir Biswas on Kaggle.

The dataset contains images representing eight skin infection categories:

- Bacterial Infections – Cellulitis
- Bacterial Infections – Impetigo
- Fungal Infections – Athlete's Foot
- Fungal Infections – Nail Fungus
- Fungal Infections – Ringworm
- Parasitic Infections – Cutaneous Larva Migrans
- Viral Infections – Chickenpox
- Viral Infections – Shingles

## Model Architecture

The classification model uses a lightweight CNN architecture designed to balance classification performance and computational efficiency.

Its main components include:

- Three convolutional layers with strided convolutions for spatial downsampling.
- Global Average Pooling to reduce the number of model parameters.
- 1×1 convolutional layers serving as fully connected layers for classification.

The architecture is designed to provide efficient multi-class classification while keeping computational requirements low enough for mobile and embedded deployment.

## Model Conversion and Deployment

The model development pipeline uses TensorFlow and Keras for training, followed by conversion to a lightweight format suitable for deployment.

The conversion and deployment workflow involves:

1. Training the CNN model using the skin disease image dataset.
2. Converting the trained model to TensorFlow Lite format.
3. Converting the quantized model for use with TinyMaix.
4. Integrating the generated model into the LambdaNative application.

## Technology Stack

- **Scheme:** Application development using LambdaNative.
- **C:** Native application and inference integration.
- **Python:** Model training and conversion utilities.
- **TensorFlow / Keras:** Deep learning model development and training.
- **TensorFlow Lite:** Model conversion and quantization.
- **TinyMaix:** Lightweight neural network inference.

## Third-Party Software

### DemoCamera

Portions of the project are based on `DemoCamera`, originally developed at the University of British Columbia.

### TinyMaix

This project uses the [TinyMaix](https://github.com/xxradar/TinyMaix) library by Lieff Lee and contributors.

TinyMaix is distributed under the Apache License 2.0. See the relevant third-party licensing information for details.

## Disclaimer

This application is intended for educational, research, and experimental purposes only.

It is not a medical diagnostic tool and should not be used as a substitute for professional medical advice, diagnosis, or treatment.

Always consult a qualified healthcare professional for the assessment and diagnosis of skin conditions.

## License

This project is licensed under the BSD 2-Clause License. See the [LICENSE](LICENSE) file for details.

## Funding

This project is funded through
[NGI Mobifree Fund](https://nlnet.nl/mobifree), a fund established by
[NLnet](https://nlnet.nl) with financial support from the European
Commission's [Next Generation Internet](https://ngi.eu) program. Learn
more at the [NLnet project page](https://nlnet.nl/project/F-Droid-LambdaNative).

[<img src="https://nlnet.nl/logo/banner.png" alt="NLnet foundation logo"
width="20%" />](https://nlnet.nl)
