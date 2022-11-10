# Download and unpack lib openssl
wget --no-check-certificate https://www.openssl.org/source/old/1.1.1/openssl-1.1.1f.tar.gz
tar -zxvf openssl-1.1.1f.tar.gz -C . 
export PATH="$HOME/rpitools/arm-bcm2708/arm-rpi-4.9.3-linux-gnueabihf/bin:$PATH"

export MACHINE=armv7
export ARCH=arm
export CC=arm-linux-gnueabihf-gcc

mkdir -p $HOME/openssl
cd openssl-1.1.1f
./config shared --prefix=$HOME/openssl && make 
make install

# quit folder
cd ..