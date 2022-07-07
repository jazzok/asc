QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TEMPLATE = app
#VERSION = 1.0.0

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

include(src/asc-src.pri)
#RESOURCES = src/res/res.qrc
# Определение каталогов для версии Debug
CONFIG(debug, debug|release){
        message(***** Debug bulid!!! *****)
        unix: {
            MOC_DIR =           $$PWD/build/debug/unix/moc
            OBJECTS_DIR =       $$PWD/build/debug/unix/obj
            RCC_DIR =           $$PWD/build/debug/unix/res
            UI_HEADERS_DIR =    $$PWD/build/debug/unix/ui
            DESTDIR =           $$PWD/bin/debug/unix
            MAKEFILE =          $$PWD/build/debug
        }
        linux: {
            MOC_DIR =           $$PWD/build/debug/unix/moc
            OBJECTS_DIR =       $$PWD/build/debug/unix/obj
            RCC_DIR =           $$PWD/build/debug/unix/res
            UI_HEADERS_DIR =    $$PWD/build/debug/unix/ui
            DESTDIR =           $$PWD/bin/debug/unix
            MAKEFILE =          $$PWD/build/debug
        }
        windows: {
            MOC_DIR =           $$PWD/build/debug/windows/moc
            OBJECTS_DIR =       $$PWD/build/debug/windows/obj
            RCC_DIR =           $$PWD/build/debug/windows/res
            UI_HEADERS_DIR =    $$PWD/build/debug/windows/ui
            DESTDIR =           $$PWD/bin/debug/windows
            MAKEFILE =          $$PWD/build/debug
        }
        else: {
            MOC_DIR =           $$PWD/build/debug/os/moc
            OBJECTS_DIR =       $$PWD/build/debug/os/obj
            RCC_DIR =           $$PWD/build/debug/os/res
            UI_HEADERS_DIR =    $$PWD/build/debug/os/ui
            DESTDIR =           $$PWD/bin/debug/os
            MAKEFILE =          $$PWD/build/debug
        }
}

#   Release
CONFIG(release, debug|release){
    message(***** Release build!!! *****)
    linux:{
            MOC_DIR =        $$PWD/build/release/unix/moc
            OBJECTS_DIR =    $$PWD/build/release/unix/obj
            RCC_DIR =        $$PWD/build/release/unix/res
            UI_DIR =         $$PWD/build/release/unix/ui
            DESTDIR =        $$PWD/bin/release/unix
            MAKEFILE =       $$PWD/build/release
    }
    mac:{
            MOC_DIR =        $$PWD/build/release/mac/moc
            OBJECTS_DIR =    $$PWD/build/release/mac/obj
            RCC_DIR =        $$PWD/build/release/mac/res
            UI_DIR =         $$PWD/build/release/ui
            DESTDIR =        $$PWD/bin/release/mac
            MAKEFILE =       $$PWD/build/release
    }
    else:{
            MOC_DIR =        $$PWD/build/release/windows/moc
            OBJECTS_DIR =    $$PWD/build/release/windows/obj
            RCC_DIR =        $$PWD/build/release/windows/res
            UI_DIR =         $$PWD/build/release/windows/ui
            DESTDIR =        $$PWD/bin/release/windows
            MAKEFILE =       $$PWD/build/release
    }
}


DISTFILES +=
# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

