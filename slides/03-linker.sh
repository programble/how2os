
curl -O http://ftp.gnu.org/gnu/binutils/binutils-2.27.tar.gz

tar -xf binutils-2.27.tar.gz

cd binutils-2.27

./configure --target i386-none-elf

make -j4

make install

which i386-none-elf-ld
