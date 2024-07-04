#-------------------------------------------------------------------------
# Copyright (c) 2014 Zhang Dongdong
# All rights reserved.
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#-------------------------------------------------------------------------

unix:!macx {
# I use Ubuntu
INCLUDEPATH += $$PWD \
    /usr/local/include

LIBS += -L/usr/local/lib/ \
            -lopencv_core -lopencv_imgproc -lopencv_imgcodecs -lopencv_highgui -lopencv_features2d -lopencv_ml \
            -lboost_thread -lboost_system
}

macx {

INCLUDEPATH += $$PWD \
    /usr/local/include

LIBS += -L/usr/local/lib/ \
            -lopencv_core -lopencv_imgproc -lopencv_imgcodecs -lopencv_highgui -lopencv_features2d -lopencv_ml \
            -lboost_thread -lboost_system

#for commind line
CONFIG -= app_bundle

#change clang version for you mac
#QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.9
#QMAKE_MAC_SDK = macosx10.9

#message("QMAKE_MAC_SDK:" $$QMAKE_MAC_SDK)
}


#start with $$PWD, so that they will appear in included project
HEADERS += \
    $$PWD/common/types.h \
    $$PWD/features/feature.h \
    $$PWD/features/galif.h \
    $$PWD/features/detector.h \
    $$PWD/features/generator.h \
    $$PWD/features/util.h \
    $$PWD/io/filelist.h \
    $$PWD/io/reader_writer.h \
    $$PWD/common/distance.h \
    $$PWD/vocabulary/kmeans.h \
    $$PWD/vocabulary/kmeans_init.h \
    $$PWD/quantize/quantizer.h \
    $$PWD/index/invertedindex.h \
    $$PWD/index/tfidf.h \
    $$PWD/recognize/sketchrecognizer.h

SOURCES += \
    $$PWD/features/galif.cpp \
    $$PWD/features/detector.cpp \
    $$PWD/features/generator.cpp \
    $$PWD/features/util.cpp \
    $$PWD/io/filelist.cpp \
    $$PWD/io/reader_writer.cpp \
    $$PWD/quantize/quantizer.cpp \
    $$PWD/index/invertedindex.cpp \
    $$PWD/index/tfidf.cpp \
    $$PWD/recognize/sketchrecognizer.cpp
