# download openssl
wget --no-check-certificate https://www.openssl.org/source/old/1.1.1/openssl-1.1.1f.tar.gz 
tar -zxvf openssl-1.1.1f.tar.gz  -C .

export PATH="$HOME/x86_64-linux-musl-cross/bin:$PATH"
export MACHINE=x86_64
export ARCH=x86_64
export CC=x86_64-linux-musl-gcc
mkdir -p $HOME/openssl
# enter into openssl folder
cd openssl-1.1.1f
./config shared --prefix=$HOME/openssl && make 
make install

# quit folder
cd ..
