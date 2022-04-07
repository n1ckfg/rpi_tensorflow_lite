# https://qengineering.eu/install-tensorflow-2-lite-on-raspberry-pi-4.html

TF_VERSION=2.6.0 # 2.5.0, 2.4.0

# the tools needed
sudo apt-get install cmake curl

# download the selected TensorFlow version
wget -O tensorflow.zip https://github.com/tensorflow/tensorflow/archive/v$TF_VERSION.zip

# unpack and give the folder a convenient name
unzip tensorflow.zip
mv tensorflow-$TF_VERSION tensorflow
cd tensorflow

# get the dependencies
./tensorflow/lite/tools/make/download_dependencies.sh

# run the C++ installation (± 25 min)
./tensorflow/lite/tools/make/build_rpi_lib.sh

