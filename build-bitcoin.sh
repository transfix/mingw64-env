#!/bin/sh

./autogen.sh

DEPS="/c/dev/deps/i686-4.9.1-posix-dwarf-rt_v3-rev0"
BOOST_VERSION_STRING="mgw49-mt-s-1_56"

CXXFLAGS="-fpermissive" \
CPPFLAGS="-I$DEPS/boost_1_56_0 \
-I$DEPS/db-4.8.30.NC/build_unix \
-I$DEPS/openssl-1.0.1h/include \
-I$DEPS/protobuf-2.5.0/src \
-I$DEPS/libpng-1.6.12 \
-I$DEPS/qrencode-3.4.3" \
LDFLAGS="-L$DEPS/boost_1_56_0/stage/lib \
-L$DEPS/db-4.8.30.NC/build_unix \
-L$DEPS/openssl-1.0.1h \
-L$DEPS/miniupnpc-1.9 \
-L$DEPS/protobuf-2.5.0/src/.libs \
-L$DEPS/libpng-1.6.12/.libs \
-L$DEPS/qrencode-3.4.3/.libs" \
./configure \
--disable-upnp-default \
--disable-tests \
--with-qt-incdir=$DEPS/qtbase-opensource-src-5.3.1/include \
--with-qt-libdir=$DEPS/qtbase-opensource-src-5.3.1/lib \
--with-qt-bindir=$DEPS/qtbase-opensource-src-5.3.1/bin \
--with-qt-plugindir=$DEPS/qtbase-opensource-src-5.3.1/plugins \
--with-boost-system=$BOOST_VERSION_STRING \
--with-boost-filesystem=$BOOST_VERSION_STRING \
--with-boost-program-options=$BOOST_VERSION_STRING \
--with-boost-thread=$BOOST_VERSION_STRING \
--with-boost-chrono=$BOOST_VERSION_STRING \
--with-protoc-bindir=$DEPS/protobuf-2.5.0/src

make

strip src/bitcoin-cli.exe
strip src/bitcoind.exe
strip src/qt/bitcoin-qt.exe

