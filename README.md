MTRE 3710 Instructor Materials
==============================

Cloning 
-------

This repo uses git submodules. Use: 

   git clone --recursive https://github.com/theNerd247/mtre3710.git

Building Materials 
------------------

This system uses cmake >= 2.6.0. To build (assuming you're working directory is
the repo):

	 mkdir build
	 cd build
	 cmake -DCMAKE_TOOLCHAIN_FILE=../cmake/cmake-avr/generic-gcc-avr.cmake ..
