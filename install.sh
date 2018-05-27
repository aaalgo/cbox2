./bootstrap --with-python=python3
./b2 cxxflags="-fPIC" variant=release link=static threading=multi runtime-link=static --prefix=/opt/cbox install
