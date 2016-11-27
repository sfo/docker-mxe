FROM ubuntu:16.04

MAINTAINER Stanley Förster <stanley.foerster@gmail.com>

RUN \
	echo "deb http://pkg.mxe.cc/repos/apt/debian wheezy main" >> /etc/apt/sources.list.d/mxeapt.list && \
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D43A795B73B16ABE9643FE1AFD8FFF16DB45C6AB && \
	apt-get -qq update && \
	apt-get -qq -y install \
		mxe-x86-64-w64-mingw32.shared-qt3d \
		mxe-x86-64-w64-mingw32.shared-qtactiveqt \
		mxe-x86-64-w64-mingw32.shared-qtbase \
		mxe-x86-64-w64-mingw32.shared-qtcanvas3d \
		mxe-x86-64-w64-mingw32.shared-qtcharts \
		mxe-x86-64-w64-mingw32.shared-qtconnectivity \
		mxe-x86-64-w64-mingw32.shared-qtdatavis3d \
		mxe-x86-64-w64-mingw32.shared-qtdeclarative \
		mxe-x86-64-w64-mingw32.shared-qtdeclarative-render2d \
		mxe-x86-64-w64-mingw32.shared-qtgamepad \
		mxe-x86-64-w64-mingw32.shared-qtgraphicaleffects \
		mxe-x86-64-w64-mingw32.shared-qtimageformats \
		mxe-x86-64-w64-mingw32.shared-qtlocation \
		mxe-x86-64-w64-mingw32.shared-qtmultimedia \
		mxe-x86-64-w64-mingw32.shared-qtofficeopenxml \
		mxe-x86-64-w64-mingw32.shared-qtpurchasing \
		mxe-x86-64-w64-mingw32.shared-qtquickcontrols \
		mxe-x86-64-w64-mingw32.shared-qtquickcontrols2 \
		mxe-x86-64-w64-mingw32.shared-qtscript \
		mxe-x86-64-w64-mingw32.shared-qtscxml \
		mxe-x86-64-w64-mingw32.shared-qtsensors \
		mxe-x86-64-w64-mingw32.shared-qtserialbus \
		mxe-x86-64-w64-mingw32.shared-qtserialport \
		mxe-x86-64-w64-mingw32.shared-qtservice \
		mxe-x86-64-w64-mingw32.shared-qtsvg \
		mxe-x86-64-w64-mingw32.shared-qtsystems \
		mxe-x86-64-w64-mingw32.shared-qttools \
		mxe-x86-64-w64-mingw32.shared-qttranslations \
		mxe-x86-64-w64-mingw32.shared-qtvirtualkeyboard \
		mxe-x86-64-w64-mingw32.shared-qtwebchannel \
		mxe-x86-64-w64-mingw32.shared-qtwebkit \
		mxe-x86-64-w64-mingw32.shared-qtwebsockets \
		mxe-x86-64-w64-mingw32.shared-qtwinextras \
		mxe-x86-64-w64-mingw32.shared-qtxlsxwriter \
		mxe-x86-64-w64-mingw32.shared-qtxmlpatterns && \
	apt-get -qq clean

ENV QT_MXE_ARCH amd64
ENV PATH /usr/lib/mxe/usr/x86_64-w64-mingw32.shared/qt5/bin:${PATH}
ENV PATH /usr/lib/mxe/usr/bin:${PATH}
