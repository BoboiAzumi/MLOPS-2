# Submission 1: Nama Proyek Anda
Nama: Naufal Azmi Ginting

Username dicoding: naufal_azmi_ginting

| | Deskripsi |
| ----------- | ----------- |
| Dataset | [Hypertension Risk Prediction Dataset](https://www.kaggle.com/datasets/miadul/hypertension-risk-prediction-dataset) |
| Masalah |Memprediksi risiko seseorang menderita hipertensi berdasarkan fitur demografis, gaya hidup, dan riwayat kesehatan. Fitur yang digunakan antara lain usia, BMI, tingkat stres, riwayat keluarga, dan lainnya.  |
| Solusi machine learning | Membangun pipeline machine learning lengkap menggunakan TensorFlow Extended (TFX) untuk klasifikasi biner apakah seseorang memiliki hipertensi atau tidak.  |
| Metode pengolahan | Data diolah menggunakan komponen TFX seperti ExampleGen, StatisticsGen, SchemaGen, dan Transform. Fitur numerik akan dinormalisasi ke skala 0 dan 1, sementara fitur kategorikal diubah menjadi representasi one-hot. |
| Arsitektur model | Model dibangun menggunakan API Keras Functional. Input berupa gabungan dari fitur numerik dan one-hot encoded fitur kategorikal. Layer tersembunyi terdiri dari Dense 256 → 64 → 16 dengan aktivasi ReLU, dan output layer menggunakan sigmoid. Model dikompilasi dengan optimizer Adam dan loss binary_crossentropy. |
| Metrik evaluasi | - AUC<br>- ExampleCount<br>- Binary Accuracy<br>- False Positive<br>- False Negative<br>- True Positive<br>- True Negative<br>- Loss |
| Performa model | - **AUC** : 0.93<br>- **ExampleCount** : 391<br>- **Binary Accuracy** : 0.885<br>- **False Positive** : 21<br>- **False Negative** : 24<br>- **True Positive** : 173<br>- **True Negative** : 173<br>- **Loss** : 1.176  |
| Opsi deployment | Model akan di-deploy sebagai REST API menggunakan TensorFlow Serving dan menggunakan layanan railway. Ini memungkinkan aplikasi lain untuk mengirimkan data pasien dan menerima prediksi risiko hipertensi secara real-time. |
| Web app | Tautan web app yang digunakan untuk mengakses model serving. Contoh: [nama-model](https://model-resiko-kredit.herokuapp.com/v1/models/model-resiko-kredit/metadata)|
| Monitoring | Deksripsi terkait hasil monitoring dari model serving |