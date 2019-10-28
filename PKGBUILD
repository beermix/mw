# Maintainer:  Alexey Pavlov <alexpux@gmail.com>
# Contributor: Alexey Borzenkov <snaury@gmail.com>
# Contributor: Ray Donnelly <mingw.android@gmail.com>
# Contributor: Renato Silva <br.renatosilva@gmail.com>
# Contributor: wirx6 <wirx654@gmail.com>

_enable_ada=no
_enable_objc=no
_threads="posix"
_realname=gcc
pkgbase=mingw-w64-${_realname}
pkgname=("${MINGW_PACKAGE_PREFIX}-${_realname}"
         "${MINGW_PACKAGE_PREFIX}-${_realname}-libs"
         "${MINGW_PACKAGE_PREFIX}-${_realname}-libgfortran"
         "${MINGW_PACKAGE_PREFIX}-${_realname}-fortran"
         $([[ "$_enable_ada" == "yes" ]] && echo "${MINGW_PACKAGE_PREFIX}-${_realname}-ada")
         $([[ "$_enable_objc" == "yes" ]] && echo "${MINGW_PACKAGE_PREFIX}-${_realname}-objc")
        )
#_snapshot=20191026
pkgver=9.2.1
#_majorver=${pkgver:0:1}
#_sourcedir=${_realname}-${_majorver}-${_snapshot}
_sourcedir=${_realname}-9.2.0
pkgrel=53
pkgdesc="GCC for the MinGW-w64"
arch=('any')
url="https://gcc.gnu.org"
license=('GPL' 'LGPL' 'FDL' 'custom')
groups=("${MINGW_PACKAGE_PREFIX}-toolchain")
makedepends=("${MINGW_PACKAGE_PREFIX}-${_realname}"
             $([[ "$_enable_ada" == "yes" ]] && echo "${MINGW_PACKAGE_PREFIX}-${_realname}-ada")
             "${MINGW_PACKAGE_PREFIX}-binutils"
             "${MINGW_PACKAGE_PREFIX}-crt"
             "${MINGW_PACKAGE_PREFIX}-headers"
             "${MINGW_PACKAGE_PREFIX}-gmp"
             "${MINGW_PACKAGE_PREFIX}-isl"
             "${MINGW_PACKAGE_PREFIX}-libiconv"
             "${MINGW_PACKAGE_PREFIX}-mpc"
             "${MINGW_PACKAGE_PREFIX}-mpfr"
             "${MINGW_PACKAGE_PREFIX}-windows-default-manifest"
             "${MINGW_PACKAGE_PREFIX}-winpthreads"
             "${MINGW_PACKAGE_PREFIX}-zlib")
optdepends=()
options=('staticlibs' '!emptydirs') # '!strip' 'debug')
source=("https://ftp.gnu.org/gnu/gcc/${_realname}-${pkgver%%+*}/${_realname}-9.2.0.tar.xz"{,.sig}
        #https://www.mirrorservice.org/sites/sourceware.org/pub/gcc/snapshots/${_majorver}-${_snapshot}/gcc-${_majorver}-${_snapshot}.tar.xz
        "gdbinit"
        0002-Relocate-libintl.patch
        0003-Windows-Follow-Posix-dir-exists-semantics-more-close.patch
        0004-Windows-Use-not-in-progpath-and-leave-case-as-is.patch
        0005-Windows-Don-t-ignore-native-system-header-dir.patch
        0006-Windows-New-feature-to-allow-overriding.patch
        0007-Build-EXTRA_GNATTOOLS-for-Ada.patch
        0008-Prettify-linking-no-undefined.patch
        0009-gcc-make-xmmintrin-header-cplusplus-compatible-depre.patch
        0010-Fix-using-large-PCH.patch
        0011-Enable-shared-gnat-implib.patch
        0012-Handle-spaces-in-path-for-default-manifest.patch
        0014-gcc-9-branch-clone_function_name_1-Retain-any-stdcall-suffix.patch
        0130-libstdc++-in-out.patch
        010-documentation.patch
        0001-Ignore-Werror-if-GCC_IGNORE_WERROR-environment-varia.patch
        0002-gcc-plugin-Win-Dont-need-undefined-extern-var-refs-nor-fpic.patch
        0003-gcc-plugin-POSIX-include-sys-select-h.patch
        0008-libgcc-disable-split-stack-nothreads.patch
        gcc-stable-branch.patch
        optimize.patch
        optimize-at-least-some.patch
        0018-isl-0.20.patch
        0140-gcc-8.2.0-diagnostic-color.patch)
sha256sums=('ea6ef08f121239da5695f76c9b33637a118dcf63e24164422231917fa61fb206'
            'SKIP'
            'dea2bbad4967280910559c6a11b865aeec19cab34647fb5894cb498b24b14462'
            '2dd7498bcb25b41afcc458696386b456ee4ff440bf395519a23d1f945ba15a41'
            '6033acda690786397059536787a6577e1a9f2b39f8a66276821917066094f43c'
            '388f423a67e4be6f547ca7e340ff8ee4c78b1ed83f3fd698daa409e309911807'
            '86fc77d5a6c137a9aca65ad6ba56653fb41b05636b763ce2c0b0b14d617c9de4'
            'd1e10cd2ef5594c34acead334bb93af500e00699ba673edc8916da22a572677d'
            '3629446c0039d9061cfedcb6d7a7589279588bb4601c7ce233546d357bd4be34'
            'ec6800816632234afc35ce40542a6aab3ee76e8514a7d0cb4171fd874353ecd7'
            '0eaee0e1201f4f85ea20756432a9d51531e0e859f6f121276684e2b63b2ee315'
            '0decbbebda7ceac91da5d3dec9b7330f406a4358fa150560f08ff6f54739035f'
            '8faff8e503a617f283270f411399a8bcacda3ab62b4072dedf117e108af4844a'
            'e427297a118c47d2e71cb05dd9a496e9ada497917721c16918548ee2f13ad709'
            '2321c7dce29a600477e481d16d847f05dc8c6d6461ee1eba7814c5bf62c2ef95'
            'a526cfab91a1499be92c824c7f2185a013a38dbdfbeabe63ecbe84451e07b021'
            'e467f0ac68b349de826c79b00a45c5ad9e7c5a55d06b9b9fa7afd94c597f6376')

# Helper macros to help make tasks easier #
apply_patch_with_msg() {
  for _patch in "$@"
  do
    msg2 "Applying ${_patch}"
    patch -Nbp1 -i "${srcdir}/${_patch}"
  done
}

del_file_exists() {
  for _fname in "$@"
  do
    if [ -f ${_fname} ]; then
      rm -rf ${_fname}
    fi
  done
}
# =========================================== #


prepare() {
  cd ${srcdir}/${_sourcedir}
  del_file_exists intl/canonicalize.c intl/canonicalize.h \
    intl/relocatex.c intl/relocatex.h

  apply_patch_with_msg \
    gcc-stable-branch.patch \
    0002-Relocate-libintl.patch \
    0003-Windows-Follow-Posix-dir-exists-semantics-more-close.patch \
    0004-Windows-Use-not-in-progpath-and-leave-case-as-is.patch \
    0005-Windows-Don-t-ignore-native-system-header-dir.patch \
    0006-Windows-New-feature-to-allow-overriding.patch \
    0007-Build-EXTRA_GNATTOOLS-for-Ada.patch \
    0008-Prettify-linking-no-undefined.patch \
    0009-gcc-make-xmmintrin-header-cplusplus-compatible-depre.patch \
    0010-Fix-using-large-PCH.patch \
    0011-Enable-shared-gnat-implib.patch \
    0012-Handle-spaces-in-path-for-default-manifest.patch \
    0014-gcc-9-branch-clone_function_name_1-Retain-any-stdcall-suffix.patch \
    0018-isl-0.20.patch \
    optimize.patch \
    optimize-at-least-some.patch

  apply_patch_with_msg \
    0130-libstdc++-in-out.patch

  # Enable diagnostic color under mintty
  # Вячеслав Петрищев <vyachemail@gmail.com>
  apply_patch_with_msg \
    0140-gcc-8.2.0-diagnostic-color.patch

  # do not expect ${prefix}/mingw symlink - this should be superceded by
  # 0005-Windows-Don-t-ignore-native-system-header-dir.patch .. but isn't!
  sed -i 's/${prefix}\/mingw\//${prefix}\//g' configure

  # change hardcoded /mingw prefix to the real prefix .. isn't this rubbish?
  # it might work at build time and could be important there but beyond that?!
  local MINGW_NATIVE_PREFIX=$(cygpath -am ${MINGW_PREFIX}/${MINGW_CHOST})
  sed -i "s#\\/mingw\\/#${MINGW_NATIVE_PREFIX//\//\\/}\\/#g" gcc/config/i386/mingw32.h

  # Do not run fixincludes
  # sed -i 's@\./fixinc\.sh@-c true@' gcc/Makefile.in

  # hack! - some configure tests for header files using "$CPP $CPPFLAGS"
  # sed -i "/ac_cpp=/s/\$CPPFLAGS/\$CPPFLAGS -O2/" {libiberty,gcc}/configure
}

build() {
  [[ -d ${srcdir}/build-${MINGW_CHOST} ]] && rm -rf ${srcdir}/build-${MINGW_CHOST}
  mkdir -p ${srcdir}/build-${MINGW_CHOST} && cd ${srcdir}/build-${MINGW_CHOST}

  declare -a extra_config
  if check_option "debug" "n"; then
    extra_config+=("--disable-libstdcxx-debug")
  else
    extra_config+=("--enable-libstdcxx-debug")
  fi

  case "${CARCH}" in
    i686)
      local _conf="--disable-sjlj-exceptions --with-dwarf2"
      LDFLAGS+=" -Wl,--large-address-aware"
      local _arch=i686
    ;;

    x86_64)
      local _arch=x86-64
      local _conf=""
    ;;
  esac

  local _languages="c,lto,c++,fortran"
  if [ "$_enable_l" == "yes" ]; then
    _languages+=",ada"
  fi
  if [ "$_enable_objc" == "yes" ]; then
    _languages+=",objc,obj-c++"
  fi

  #export CC='ccache gcc'
  #export CXX='ccache g++'

  ../${_sourcedir}/configure \
    --prefix=${MINGW_PREFIX} \
    --with-local-prefix=${MINGW_PREFIX}/local \
    --build=${MINGW_CHOST} \
    --host=${MINGW_CHOST} \
    --target=${MINGW_CHOST} \
    --with-native-system-header-dir=${MINGW_PREFIX}/${MINGW_CHOST}/include \
    --libexecdir=${MINGW_PREFIX}/lib \
    --enable-bootstrap \
    --with-tune=core-avx2 \
    --enable-languages=${_languages} \
    --enable-shared --enable-static \
    --enable-libatomic \
    --enable-threads=${_threads} \
    --enable-graphite \
    --enable-fully-dynamic-string \
    --enable-libstdcxx-filesystem-ts=yes \
    --enable-libstdcxx-time=yes \
    --enable-libstdcxx-pch=yes \
    ${extra_config} \
    --enable-lto \
    --enable-libgomp \
    --disable-multilib \
    --enable-checking=release \
    --disable-rpath \
    --disable-win32-registry \
    --disable-nls \
    --disable-werror \
    --disable-symvers \
    --enable-plugin \
    --with-libiconv \
    --enable-__cxa_atexit \
    --enable-linker-build-id \
    --disable-vtable-verify \
    --disable-libunwind-exceptions \
    --with-system-zlib \
    --disable-libmpx \
    --with-diagnostics-color=always \
    --with-{gmp,mpfr,mpc,isl}=${MINGW_PREFIX} \
    --with-pkgversion="Rev${pkgrel}, Built by MSYS2 project" \
    --with-bugurl="https://sourceforge.net/projects/msys2" \
    --with-gnu-as --with-gnu-ld \
    ${_conf}

  # While we're debugging -fopenmp problems at least.
  # .. we may as well not strip anything.
  if check_option "strip" "n"; then
    sed -i 's,^STRIP = .*$,STRIP = true,g'                   Makefile
    sed -i 's,^STRIP_FOR_TARGET=.*$,STRIP_FOR_TARGET=true,g' Makefile
  fi

  nice -n 19 noti make V=1 all

  rm -rf ${srcdir}${MINGW_PREFIX}

  make -j1 DESTDIR=${srcdir} install
  if [ "$_enable_ada" == "yes" ]; then
    mv ${srcdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/adalib/*.dll ${srcdir}${MINGW_PREFIX}/bin/
  fi
}

package_mingw-w64-gcc-libs() {
  pkgdesc="GNU Compiler Collection (libraries) for MinGW-w64"
  depends=("${MINGW_PACKAGE_PREFIX}-gmp"
           "${MINGW_PACKAGE_PREFIX}-mpc"
           "${MINGW_PACKAGE_PREFIX}-mpfr"
           "${MINGW_PACKAGE_PREFIX}-libwinpthread")

  # Licensing information

  # Part of the package is GCCRLE, part is LGPL2+, see README generation below.
  # Since the packaged GCCRLE libraries are also GPL3+, and LGPL2+ is compatible
  # with GPL3+, the whole package can be redistributed under GPL3+.
  license=(GPL3+ partial:'GCCRLE' partial:'LGPL2+')

  # We explain the licensing in this generated README file
  mkdir -p "${pkgdir}${MINGW_PREFIX}/share/licenses/${_realname}-libs"
  cat << ENDFILE > "${pkgdir}${MINGW_PREFIX}/share/licenses/${_realname}-libs/README"
The libgcc, libssp, libstdc++, libgomp and libatomic libraries are covered by
GPL3+ with the GCC Runtime Library Exception. The libquadmath library is covered
by LGPL2+. The package as a whole can be redistributed under GPL3+.
ENDFILE

  # License files
  install -Dm644 "${srcdir}/${_sourcedir}/COPYING3"        "${pkgdir}${MINGW_PREFIX}/share/licenses/${_realname}-libs/COPYING3"
  install -Dm644 "${srcdir}/${_sourcedir}/COPYING.LIB"     "${pkgdir}${MINGW_PREFIX}/share/licenses/${_realname}-libs/COPYING.LIB"
  install -Dm644 "${srcdir}/${_sourcedir}/COPYING.RUNTIME" "${pkgdir}${MINGW_PREFIX}/share/licenses/${_realname}-libs/COPYING.RUNTIME"

  mkdir -p ${pkgdir}${MINGW_PREFIX}/bin

  cd ${srcdir}${MINGW_PREFIX}
  # libitm* and libvtv* are disbled until fixed
  cp bin/{libatomic*,libgcc*,libgomp*,libquadmath*,libssp*,libstdc*}.dll ${pkgdir}${MINGW_PREFIX}/bin/
}

package_mingw-w64-gcc() {
  pkgdesc="GNU Compiler Collection (C,C++,OpenMP) for MinGW-w64"
  depends=("${MINGW_PACKAGE_PREFIX}-binutils"
           "${MINGW_PACKAGE_PREFIX}-crt"
           "${MINGW_PACKAGE_PREFIX}-headers"
           "${MINGW_PACKAGE_PREFIX}-isl"
           "${MINGW_PACKAGE_PREFIX}-libiconv"
           "${MINGW_PACKAGE_PREFIX}-mpc"
           "${MINGW_PACKAGE_PREFIX}-${_realname}-libs=${pkgver}-${pkgrel}"
           "${MINGW_PACKAGE_PREFIX}-windows-default-manifest"
           "${MINGW_PACKAGE_PREFIX}-winpthreads"
           "${MINGW_PACKAGE_PREFIX}-zlib")
  provides=("${MINGW_PACKAGE_PREFIX}-${_realname}-base")
  conflicts=("${MINGW_PACKAGE_PREFIX}-${_realname}-base")

  mkdir -p ${pkgdir}${MINGW_PREFIX}/{bin,include,lib,share}

  cd ${srcdir}${MINGW_PREFIX}
  cp bin/cpp.exe                                        ${pkgdir}${MINGW_PREFIX}/bin/
  cp bin/gcc.exe                                        ${pkgdir}${MINGW_PREFIX}/bin/
  cp bin/gcc.exe                                        ${pkgdir}${MINGW_PREFIX}/bin/cc.exe
  cp bin/gcc-ar.exe                                     ${pkgdir}${MINGW_PREFIX}/bin/
  cp bin/gcc-nm.exe                                     ${pkgdir}${MINGW_PREFIX}/bin/
  cp bin/gcc-ranlib.exe                                 ${pkgdir}${MINGW_PREFIX}/bin/
  cp bin/gcov.exe                                       ${pkgdir}${MINGW_PREFIX}/bin/
  cp bin/gcov-tool.exe                                  ${pkgdir}${MINGW_PREFIX}/bin/
  cp bin/c++.exe                                        ${pkgdir}${MINGW_PREFIX}/bin/
  cp bin/g++.exe                                        ${pkgdir}${MINGW_PREFIX}/bin/
  cp bin/${MINGW_CHOST}-c++.exe                         ${pkgdir}${MINGW_PREFIX}/bin/
  cp bin/${MINGW_CHOST}-g++.exe                         ${pkgdir}${MINGW_PREFIX}/bin/
  cp bin/${MINGW_CHOST}-gcc-${pkgver%%+*}.exe               ${pkgdir}${MINGW_PREFIX}/bin/
  cp bin/${MINGW_CHOST}-gcc.exe                         ${pkgdir}${MINGW_PREFIX}/bin/
  cp bin/${MINGW_CHOST}-gcc-ar.exe                      ${pkgdir}${MINGW_PREFIX}/bin/
  cp bin/${MINGW_CHOST}-gcc-nm.exe                      ${pkgdir}${MINGW_PREFIX}/bin/
  cp bin/${MINGW_CHOST}-gcc-ranlib.exe                  ${pkgdir}${MINGW_PREFIX}/bin/

  #cp bin/{libgcc*,libgomp*,libquadmath*,libssp*,libstdc*}.dll ${pkgdir}${MINGW_PREFIX}/bin/
  mkdir -p ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/include
  cp lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/include/*.h        ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/include/
  cp -r lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/include/ssp     ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/include/
  cp -r lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/include-fixed   ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp -r lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/install-tools   ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp -r lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/plugin          ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/cc1.exe            ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/collect2.exe       ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/crt*.o             ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/liblto*            ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/libgcov*           ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/lto*.exe           ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/cc1plus.exe        ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/

  cp lib/libatomic*                                      ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp lib/libgcc*                                         ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/libgcc*            ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/

  cp lib/libgomp*                                        ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  # cp lib/libitm*                                         ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp lib/libquadmath*                                    ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp lib/libssp*                                         ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  # cp lib/libvtv*                                         ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp lib/libstdc++*                                      ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp lib/libsupc++*                                      ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/

  #mkdir -p ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/lib
  #cp ${srcdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/lib/libgcc_s.a ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  #cp lib/gcc/${MINGW_CHOST}/lib/libgcc_s.a                ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/lib/

  #cp -r lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/include/c++      ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/include/
  cp -r include/c++                                       ${pkgdir}${MINGW_PREFIX}/include/
  #cp lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/libstdc++*         ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  #cp lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/libsupc++*         ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/

  mkdir -p ${pkgdir}${MINGW_PREFIX}/share/{doc,info,locale,man}
  #cp -r share/doc/gcc-${pkgver%%+*} ${pkgdir}${MINGW_PREFIX}/share/doc/
  cp share/info/cpp.info*                                ${pkgdir}${MINGW_PREFIX}/share/info/
  cp share/info/cppinternals.info*                       ${pkgdir}${MINGW_PREFIX}/share/info/
  cp share/info/gcc.info*                                ${pkgdir}${MINGW_PREFIX}/share/info/
  cp share/info/gccinstall.info*                         ${pkgdir}${MINGW_PREFIX}/share/info/
  cp share/info/gccint.info*                             ${pkgdir}${MINGW_PREFIX}/share/info/
  # cp share/info/libitm.info*                             ${pkgdir}${MINGW_PREFIX}/share/info/
  cp share/info/libgomp.info*                            ${pkgdir}${MINGW_PREFIX}/share/info/
  cp share/info/libquadmath.info*                        ${pkgdir}${MINGW_PREFIX}/share/info/

  #cp share/locale/* ${pkgdir}${MINGW_PREFIX}/share/locale/
  mkdir -p ${pkgdir}${MINGW_PREFIX}/share/gcc-${pkgver%%+*}/python
  cp -r share/gcc-${pkgver%%+*}/python/libstdcxx             ${pkgdir}${MINGW_PREFIX}/share/gcc-${pkgver%%+*}/python/
  mkdir -p ${pkgdir}${MINGW_PREFIX}/share/man/man1

  # install plugins for binutils
  mkdir -p ${pkgdir}${MINGW_PREFIX}/lib/bfd-plugins
  cp lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/*plugin*.dll       ${pkgdir}${MINGW_PREFIX}/lib/bfd-plugins/

  # install "custom" system gdbinit
  install -D -m644 ${srcdir}/gdbinit ${pkgdir}${MINGW_PREFIX}/etc/gdbinit
  sed -i 's|%GCC_NAME%|gcc-'${pkgver%%+*}'|g' ${pkgdir}${MINGW_PREFIX}/etc/gdbinit
}

package_mingw-w64-gcc-libgfortran() {
  pkgdesc="GNU Compiler Collection (libgfortran) for MinGW-w64"
  depends=("${MINGW_PACKAGE_PREFIX}-${_realname}-libs=${pkgver}-${pkgrel}")

  mkdir -p ${pkgdir}${MINGW_PREFIX}/bin
  cd ${srcdir}${MINGW_PREFIX}
  cp bin/libgfortran*.dll                                ${pkgdir}${MINGW_PREFIX}/bin/
}

package_mingw-w64-gcc-fortran() {
  pkgdesc="GNU Compiler Collection (Fortran) for MinGW-w64"
  depends=("${MINGW_PACKAGE_PREFIX}-${_realname}=${pkgver}-${pkgrel}"
           "${MINGW_PACKAGE_PREFIX}-${_realname}-libgfortran=${pkgver}-${pkgrel}")

  mkdir -p ${pkgdir}${MINGW_PREFIX}/{bin,lib,share}

  cd ${srcdir}${MINGW_PREFIX}
  cp bin/gfortran.exe ${pkgdir}${MINGW_PREFIX}/bin/
  cp bin/${MINGW_CHOST}-gfortran.exe ${pkgdir}${MINGW_PREFIX}/bin/

  #cp bin/libgfortran*.dll ${pkgdir}${MINGW_PREFIX}/bin/

  mkdir -p ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}
  cp -r lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/finclude       ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/f951.exe          ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/libcaf_single.a   ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp lib/libgfortran*                                   ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  mkdir -p ${pkgdir}${MINGW_PREFIX}/share/man/man1
  cp share/man/man1/gfortran.1*                         ${pkgdir}${MINGW_PREFIX}/share/man/man1/
  mkdir -p ${pkgdir}${MINGW_PREFIX}/share/info
  cp share/info/gfortran.info*                          ${pkgdir}${MINGW_PREFIX}/share/info/
}

package_mingw-w64-gcc-ada() {
  pkgdesc="GNU Compiler Collection (Ada) for MinGW-w64"
  depends=("${MINGW_PACKAGE_PREFIX}-${_realname}=${pkgver}-${pkgrel}")

  mkdir -p ${pkgdir}${MINGW_PREFIX}/{bin,lib,share}

  cd ${srcdir}${MINGW_PREFIX}
  cp bin/gnat*.exe ${pkgdir}${MINGW_PREFIX}/bin/

  cp bin/{libgnarl*,libgnat*}.dll                       ${pkgdir}${MINGW_PREFIX}/bin/

  mkdir -p ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}
  cp -r lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/adainclude     ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp -r lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/adalib         ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/gnat1.exe         ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/

  mkdir -p ${pkgdir}${MINGW_PREFIX}/share/info
  cp share/info/gnat-style.info*                        ${pkgdir}${MINGW_PREFIX}/share/info/
  cp share/info/gnat_rm.info*                           ${pkgdir}${MINGW_PREFIX}/share/info/
  cp share/info/gnat_ugn.info*                          ${pkgdir}${MINGW_PREFIX}/share/info/
}

package_mingw-w64-gcc-objc() {
  pkgdesc="GNU Compiler Collection (ObjC,Obj-C++) for MinGW-w64"
  depends=("${MINGW_PACKAGE_PREFIX}-${_realname}=${pkgver}-${pkgrel}")

  mkdir -p ${pkgdir}${MINGW_PREFIX}/{bin,lib}

  cd ${srcdir}${MINGW_PREFIX}
  cp bin/libobjc*.dll ${pkgdir}${MINGW_PREFIX}/bin/

  mkdir -p ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/include
  cp -r lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/include/objc    ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/include/
  cp lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/cc1obj.exe         ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/cc1objplus.exe     ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
  cp lib/libobjc.*                                       ${pkgdir}${MINGW_PREFIX}/lib/gcc/${MINGW_CHOST}/${pkgver%%+*}/
}

# Wrappers for package functions

# 32-bit wrappers
package_mingw-w64-i686-gcc-libs() {
  package_mingw-w64-gcc-libs
}

package_mingw-w64-i686-gcc() {
  package_mingw-w64-gcc
}

package_mingw-w64-i686-gcc-libgfortran() {
  package_mingw-w64-gcc-libgfortran
}

package_mingw-w64-i686-gcc-fortran() {
  package_mingw-w64-gcc-fortran
}

package_mingw-w64-i686-gcc-ada() {
  package_mingw-w64-gcc-ada
}

package_mingw-w64-i686-gcc-objc() {
  package_mingw-w64-gcc-objc
}

# 64-bit wrappers
package_mingw-w64-x86_64-gcc-libs() {
  package_mingw-w64-gcc-libs
}

package_mingw-w64-x86_64-gcc() {
  package_mingw-w64-gcc
}

package_mingw-w64-x86_64-gcc-libgfortran() {
  package_mingw-w64-gcc-libgfortran
}

package_mingw-w64-x86_64-gcc-fortran() {
  package_mingw-w64-gcc-fortran
}

package_mingw-w64-x86_64-gcc-ada() {
  package_mingw-w64-gcc-ada
}

package_mingw-w64-x86_64-gcc-objc() {
  package_mingw-w64-gcc-objc
}
