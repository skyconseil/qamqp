#-------------------------------------------------
#
# Project created by QtCreator 2017-05-19T00:52:51
#
#-------------------------------------------------

QT       -= gui
CONFIG   += staticlib c++11 debug_and_release
TARGET    = qamqp
TEMPLATE  = lib

# Copy output library into lib folder
DESTDIR = ../lib
MOC_DIR = moc

QAMQP_VERSION = 0.6.0

# Define GIT Macros

# GIT_VERSION = "$$system(git describe --long --dirty --tags)"
GIT_VERSION = "v0.5.0-32-gf5b9d2e-dirty"
DEFINES += GIT_VERSION=\\\"$$GIT_VERSION\\\"

# GIT_TAG = $$system(git describe --abbrev=0)
GIT_TAG = "v0.5.0"
VERSION = $$replace(GIT_TAG, v,)

# Configure dependencies
include(qamqp_config.pri)

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# iOS kits only (device and arm64 simulator); "Designed for iPad" on macOS runs the iphoneos build.
CONFIG -= bitcode
QMAKE_CXXFLAGS += -fvisibility=hidden -w
isEmpty(GUIDOR_IOS_DEPLOYMENT_TARGET): error("GUIDOR_IOS_DEPLOYMENT_TARGET is not set; run qmake through scripts/qmake_xcode.sh")
QMAKE_IOS_DEPLOYMENT_TARGET = $$GUIDOR_IOS_DEPLOYMENT_TARGET

include(qamqp_sources.pri)
