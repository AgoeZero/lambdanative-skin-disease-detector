;; MIT License
;;
;; Copyright (c) 2025 Rabina Poudyal
;; Copyright (c) 2025-2026 Benson Muite
;; Copyright (c) 2026 Bonface Kabiru
;;
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be included in all
;; copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

(use-modules (haunt asset)
             (haunt page)
             (haunt builder blog)
             (haunt builder atom)
             (haunt builder assets)
	         (haunt builder flat-pages)
             (haunt builder redirects)
             (haunt builder rss)
	         (haunt html)
	         (haunt reader)
             (haunt reader skribe)
             (haunt reader texinfo)
             (haunt reader commonmark)
             (haunt site)
	         (haunt utils))

(define agoezero-theme
  (theme #:name "agoezero-theme"
         #:layout
         (lambda (site title body)
           `((doctype "html")
             (head
              (meta (@ (charset "utf-8")))
	      (link (@ (rel "stylesheet")
               (type "text/css")
               (href "static/css/style.css")))
              (title ,title))
             (body
              (div (@ (class "container"))
                    ,body))))))

(define (static-page title file-name body)
  (lambda (site posts)
    (make-page file-name
               (with-layout agoezero-theme site title body)
               sxml->html)))

(define home-page
  (static-page "Skin Disease Detector" "index.html"
    `((main (@ (class "wrap"))
	    (div (@ (class "eyebrow"))
	      (p "Healthcare research · Machine learning · Edge AI"))
      (h1 "Skin Disease Detector")
      (p (@ (class "lead"))
	 "An experimental skin disease image-classification application "
          "written in Scheme using LambdaNative.")

      (section (@ (class "panel"))
         (h2 "About")
         (p "Skin Disease Detector uses a lightweight convolutional neural "
	    "network (CNN) to classify images into categories represented "
	    "in its training dataset. The project explores on-device image "
	    "classification for mobile and resource-constrained devices.")
         (p "The model was developed with TensorFlow and Keras, converted to "
	    "a lightweight format, and integrated into the LambdaNative Android "
	    "application using TinyMaix."))

      (section (@ (class "panel"))
        (h2 "Features")
        (ul
          (li "Classifies skin images into eight categories represented in the "
              "training dataset.")
          (li "Performs inference locally on the device, without requiring a "
              "continuous internet connection.")
          (li "Uses a lightweight CNN designed for mobile and embedded "
              "deployment.")
          (li "Built with Scheme and LambdaNative, with native C integration.")))


     (section (@ (class "panel"))
       (h2 "Dataset")

       (p "The model was trained using the "
          (a (@ (href "https://www.kaggle.com/datasets/subirbiswas19/skin-disease-dataset"))
             "Skin Disease Dataset by Subir Biswas on Kaggle")
          ".")
       (p "The dataset covers these categories:"
         (ul
           (li "Bacterial infections: Cellulitis and Impetigo")
           (li "Fungal infections: Athlete’s Foot, Nail Fungus, and Ringworm")
           (li "Parasitic infections: Cutaneous Larva Migrans")
           (li "Viral infections: Chickenpox and Shingles")))

      (p "Classification results are limited to the dataset and categories "
         "used during training."))

     (section (@ (class "panel"))
       (h2 "Model and deployment")

       (p "The model-development workflow involves:"
         (ul
           (li "Training a CNN using the skin disease image dataset.")
           (li "Converting the trained model to TensorFlow Lite format.")
           (li "Converting the quantized model for TinyMaix.")
           (li "Integrating the model into the LambdaNative application.")))

      (p "The architecture uses three convolutional layers with strided "
         "convolutions, global average pooling, and 1×1 convolutional layers "
         "for classification."))

     (section (@ (class "panel"))
      (h2 "Download")
      (ul
       (li
	 (p (@ (class "button"))
          (a 
           (@ (href "SkinDiseaseDetector-1.1-android-api28.apk")
               (download "SkinDiseaseDetector-1.1-android-api28.apk"))
            "Download SkinDiseaseDetector for Android (APK)")))

       (li
         (p (@ (class "button"))
          (a (@ (href "https://github.com/AgoeZero/lambdanative-skin-disease-detector"))
                 "Source code on GitHub")))
      ))

     (section (@ (class "panel"))
      (h2 "Technology stack")
      (ul
	(li "Scheme: Application development with LambdaNative")
	(li "C: Native application and inference integration")
	(li "Python: Model training and conversion utilities")
	(li "TensorFlow / Keras: Model development and training")
	(li "TensorFlow Lite: Model conversion and quantization")
	(li "TinyMaix: Lightweight neural-network inference")))

     (section (@ (class "panel"))
       (h2 "Third-party software")
       (h3 "DemoCamera")
       (p "Portions of this project are based on DemoCamera, originally "
          "developed at the University of British Columbia.")

       (h3 "TinyMaix")
       (p "This project uses the TinyMaix library. TinyMaix is distributed "
          "under the Apache License 2.0. See the relevant third-party licensing "
          "information for details."))

      (h2 "Support")
      (p "This work is supported by the "
         (a (@ (href "https://nlnet.nl/")) "NLnet Foundation")
         " through the "
         (a (@ (href "https://nlnet.nl/project/F-Droid-LambdaNative/"))
            "LambdaNative F-Droid integration project")
         ".")
      (p  (img (@ (src "static/images/NLnetLogo.png"))))

      (h2 "Disclaimer")

      (p "This application is intended for educational, research, and "
	 "experimental purposes only. It is not a medical diagnostic "
	 "tool and should not be used as a substitute for professional "
	 "medical advice, diagnosis, or treatment. Always consult a "
	 "qualified healthcare professional for the assessment and "
	 "diagnosis of skin conditions.")

      (h2 "License")

      (p "This project is licensed under the BSD 2-Clause License. "
	 "See the "
	 (a (@ (href "https://github.com/AgoeZero/lambdanative-skin-disease-detector/blob/main/LICENSE"))
	    "LICENSE")
	 " file for details.")

      (footer "Open Source · AI for Good · Built in Ghana")

      ))))

(site #:title "Skin Disease Detector"
      #:domain "agoezero.github.io"
      #:build-directory "build"
      #:default-metadata
      '((author . "Agoe Zero"))
      #:readers (list commonmark-reader texinfo-reader skribe-reader sxml-reader html-reader)
      #:builders (list (blog)
		       home-page
                       (atom-feed)
                       (atom-feeds-by-tag)
                       (rss-feed)
		       (static-directory "static")))
