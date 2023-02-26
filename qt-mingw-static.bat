set PREFIX_PATH=D:\qt-static-mingw
set QT_SRC_PATH=C:\Qt\6.4.2\Src
set BUILD_PATH=%PREFIX_PATH%\build
set MINGW_PATH=C:\Qt\Tools\mingw1120_64\bin
set QT_BASE_PATH=%QT_SRC_PATH%\qtbase\bin
set QT_CONFIGURE=%QT_SRC_PATH%\configure.bat

mkdir %BUILD_PATH%
cd %BUILD_PATH%
set PATH=%MINGW_PATH%;%QT_BASE_PATH%;%PATH%

%QT_CONFIGURE% -static -prefix %PREFIX_PATH% -qt-pcre -qt-zlib -qt-libpng -qt-libjpeg -qt-freetype -qt-harfbuzz -qt-tiff -qt-webp -schannel
