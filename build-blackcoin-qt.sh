#!/bin/sh

DEPS="/c/dev/deps/i686-4.9.1-posix-dwarf-rt_v3-rev0"

qmake \
"QMAKE_CXXFLAGS+=-fpermissive" \
"BOOST_INCLUDE_PATH=$DEPS/boost_1_56_0" \
"BOOST_LIB_PATH=$DEPS/boost_1_56_0/stage/lib" \
"BOOST_LIB_SUFFIX=-mgw49-mt-s-1_56" \
"BOOST_THREAD_LIB_SUFFIX=-mgw49-mt-s-1_56" \
"BDB_INCLUDE_PATH=$DEPS/db-4.8.30.NC/build_unix" \
"BDB_LIB_PATH=$DEPS/db-4.8.30.NC/build_unix" \
"OPENSSL_INCLUDE_PATH=$DEPS/openssl-1.0.1h/include" \
"OPENSSL_LIB_PATH=$DEPS/openssl-1.0.1h" \
"USE_UPNP=1" \
"MINIUPNPC_INCLUDE_PATH=$DEPS/miniupnpc-1.9" \
"MINIUPNPC_LIB_PATH=$DEPS/miniupnpc-1.9" \
blackcoin-qt.pro

make
