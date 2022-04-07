# https://qengineering.eu/install-tensorflow-2-lite-on-raspberry-pi-4.html

# install the flatbuffers
cd tensorflow/tensorflow/lite/tools/make/downloads/flatbuffers
mkdir build
cd build
cmake ..
make -j4
sudo make install
sudo ldconfig

# clean up
cd ~
#rm tensorflow.zip
