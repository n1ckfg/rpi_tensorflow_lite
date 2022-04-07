# https://qengineering.eu/install-tensorflow-2-lite-on-raspberry-pi-4.html

# remove the 'old' flatbuffers
cd tensorflow/lite/tools/make/downloads
rm -rf flatbuffers

# download the latest flatbuffers
git clone --depth=1 --recursive https://github.com/google/flatbuffers.git
cd flatbuffers
mkdir build
cd build
cmake ..
make -j4
sudo make install
sudo ldconfig

# clean up
cd ~
#rm tensorflow.zip

