# Maintainer: Alexey Pavlov <alexpux@gmail.com>
# Maintainer: Chilledheart <rwindz0@gmail.com>

_realname=libevent
pkgbase=mingw-w64-${_realname}
pkgname="${MINGW_PACKAGE_PREFIX}-${_realname}"
pkgver=026590f908f8ef8602d54bd680c8bef9f4552d55
pkgrel=42
pkgdesc="An event notification library (mingw-w64)"
arch=('any')
url="https://libevent.org"
license=('BSD')
makedepends=("${MINGW_PACKAGE_PREFIX}-gcc"
             "${MINGW_PACKAGE_PREFIX}-openssl"
             "${MINGW_PACKAGE_PREFIX}-cmake"
             "${MINGW_PACKAGE_PREFIX}-python2")
optdepends=("${MINGW_PACKAGE_PREFIX}-python2")
source=(https://github.com/${_realname}/${_realname}/archive/${pkgver}.tar.gz
        'event2-02-win32.patch'
        '0001-Add-missing-file-Uninstall.cmake.in.patch'
'0002-Add-Uninstall.cmake.in-into-dist-archive.patch')
sha256sums=('e864af41a336bb11dab1a23f32993afe963c1f69618bd9292b89ecf6904845b0'
            'e572ed628daba12915aaa5867b35ef1b0ca3ed3eb6e9759f97136dd8eab32c08')

prepare() {
  cd "${srcdir}/${_realname}-${pkgver}"

  # to make transmission work, taken from:
  # https://github.com/transmission/libevent/commit/72e50166aaa2c3b3c35e336039df7101bd418264
  patch -p1 -i ${srcdir}/event2-02-win32.patch
  #patch -p1 -i ${srcdir}/0001-Add-missing-file-Uninstall.cmake.in.patch
  #patch -p1 -i ${srcdir}/0002-Add-Uninstall.cmake.in-into-dist-archive.patch
}

build() {
  [[ -d "${srcdir}"/build-${CARCH} ]] && rm -rf "${srcdir}"/build-${CARCH}
  mkdir -p "${srcdir}"/build-${CARCH} && cd "${srcdir}"/build-${CARCH}

    MSYS2_ARG_CONV_EXCL="-DCMAKE_INSTALL_PREFIX=" \
    ${MINGW_PREFIX}/bin/cmake \
      -G'MSYS Makefiles' \
      -DCMAKE_INSTALL_PREFIX=${MINGW_PREFIX} \
      -DEVENT__DISABLE_BENCHMARK=ON \
      -DEVENT__DISABLE_DEBUG_MODE=ON \
      -DEVENT__DISABLE_REGRESS=ON \
      -DEVENT__DISABLE_SAMPLES=ON \
      -DEVENT__DISABLE_TESTS=ON \
      -DEVENT__DISABLE_THREAD_SUPPORT=OFF \
      -DBUILD_TESTING=OFF \
      -DEVENT__DOXYGEN=OFF \
      -DEVENT__LIBRARY_TYPE=STATIC \
      ../${_realname}-${pkgver}

  make
}

package() {
  cd "${srcdir}/build-${CARCH}"
  make DESTDIR="${pkgdir}" install

  sed -s "s|$(cygpath -m ${MINGW_PREFIX})|${MINGW_PREFIX}|g" -i "${pkgdir}${MINGW_PREFIX}/lib/pkgconfig/${_realname}_openssl.pc"
}
