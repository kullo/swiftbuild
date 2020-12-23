#/bin/bash
set -o errexit -o nounset -o pipefail

apt-get update
apt-get --no-install-recommends --yes install build-essential checkinstall

mkdir /build
cd /build
tar xf /app/libsodium*.tar.gz --strip-components 1

./configure --prefix /usr
make
make check
checkinstall --default --pkgname=libsodium --pkglicense=ISC make install
mv libsodium*.deb /app
