# ffmpeg
#
# VERSION               2.3.2-1
#
# From https://trac.ffmpeg.org/wiki/CompilationGuide/Centos
#
FROM          centos:centos6
MAINTAINER    Julien Rottenberg <julien@rottenberg.info>





ENV           FFMPEG_VERSION  2.3.2
ENV           YASM_VERSION    1.2.0
ENV           LAME_VERSION    3.99.5
ENV           FAAC_VERSION    1.28
ENV           XVID_VERSION    1.3.3
ENV           SRC             /usr/local
ENV           LD_LIBRARY_PATH ${SRC}/lib
ENV           PKG_CONFIG_PATH ${SRC}/lib/pkgconfig



ADD           . /tmp

# See https://github.com/jrottenberg/ffmpeg/blob/master/run.sh
RUN           bash /tmp/run.sh

CMD           ["ffmpeg"]
