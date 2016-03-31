cmake_minimum_required(VERSION 2.6)

#the default instalation paths for Aria. This path must be set to point to the
#location where the lib/, include/, src/, etc, directories are located for Aria.
if(WIN32)
	#Windows install path
	set(AriaInstallPath "C:/Program Files/MobileRobots/Aria")
	set(libExtension ".dll")
else(WIN32)
	#Linux install path
	set(AriaInstallPath "/usr/local/Aria")
	set(libExtension ".so")
	set(libList "dl" "pthread")
endif(WIN32)

#if the environment variable sets the aria installation path then use that.
if("$ENV{ARIA_INSTALL_PATH}")
	set(AriaInstallPath "$ENV{ARIA_INSTALL_PATH}")
endif("$ENV{ARIA_INSTALL_PATH}")

#if a cache variable for the Aria install path has already been set then use that.
#This file will not be exporting this variable.
if(ARIA_INSTALL_PATH)
	set(AriaInstallPath ${ARIA_INSTALL_PATH})
endif(ARIA_INSTALL_PATH)

if(NOT IS_DIRECTORY ${AriaInstallPath})
	message(FATAL_ERROR 
		"Aria is not installed!"
		"If it is installed then set the environment variable: ARIA_INSTALL_PATH")
endif(NOT IS_DIRECTORY ${AriaInstallPath})

set(Aria_INCLUDE_DIRS
	"${AriaInstallPath}/include"
	CACHE INTERNAL "includes for Aria"
	)

# find the dependency libraries
foreach(l ${libList})
	find_library(lib_found 
		${l}
		NO_DEFAULT_PATH
		)
endforeach(l)

set(libList 
	${libList}
	"${AriaInstallPath}/lib/libAria${libExtension}"
	)

set(Aria_LIBRARIES
	${libList}
	CACHE INTERNAL "libraries for Aria"
	)
