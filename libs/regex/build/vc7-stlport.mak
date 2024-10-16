# copyright John Maddock 2006
# Distributed under the Boost Software License, Version 1.0. 
# (See accompanying file LICENSE_1_0.txt or copy at 
# http://www.boost.org/LICENSE_1_0.txt.
#
# auto generated makefile for VC6+STLPort
#
# usage:
# make
#   brings libraries up to date
# make install
#   brings libraries up to date and copies binaries to your VC6 /lib and /bin directories (recomended)
#

#
# ICU setup:
#
ICU_PATH=
#
# Add additional compiler options here:
#
CXXFLAGS=
#
# Add additional include directories here:
#
INCLUDES=
#
# add additional linker flags here:
#
XLFLAGS=
#
# add additional static-library creation flags here:
#
XSFLAGS=

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF "$(MSVCDIR)" == ""
!ERROR Variable MSVCDIR not set.
!ENDIF

!IF "$(STLPORT_PATH)" == ""
!ERROR Variable STLPORT_PATH not set.
!ENDIF

!IF "$(ICU_PATH)" == ""
ICU_COMPILE_OPTS=
ICU_LINK_OPTS=
!MESSAGE Building Boost.Regex without ICU / Unicode support:
!MESSAGE Hint: set ICU_PATH on the nmake command line to point 
!MESSAGE to your ICU installation if you have one.
!ELSE
ICU_COMPILE_OPTS= -DBOOST_HAS_ICU=1 -I"$(ICU_PATH)\include"
ICU_LINK_OPTS= /LIBPATH:"$(ICU_PATH)\lib" icuin.lib icuuc.lib
!MESSAGE Building Boost.Regex with ICU in $(ICU_PATH)
!ENDIF


ALL_HEADER= ../../../boost/regex/concepts.hpp ../../../boost/regex/config.hpp ../../../boost/regex/icu.hpp ../../../boost/regex/mfc.hpp ../../../boost/regex/pattern_except.hpp ../../../boost/regex/regex_traits.hpp ../../../boost/regex/user.hpp ../../../boost/regex/v4/basic_regex.hpp ../../../boost/regex/v4/basic_regex_creator.hpp ../../../boost/regex/v4/basic_regex_parser.hpp ../../../boost/regex/v4/c_regex_traits.hpp ../../../boost/regex/v4/char_regex_traits.hpp ../../../boost/regex/v4/cpp_regex_traits.hpp ../../../boost/regex/v4/cregex.hpp ../../../boost/regex/v4/error_type.hpp ../../../boost/regex/v4/fileiter.hpp ../../../boost/regex/v4/instances.hpp ../../../boost/regex/v4/iterator_category.hpp ../../../boost/regex/v4/iterator_traits.hpp ../../../boost/regex/v4/match_flags.hpp ../../../boost/regex/v4/match_results.hpp ../../../boost/regex/v4/mem_block_cache.hpp ../../../boost/regex/v4/perl_matcher.hpp ../../../boost/regex/v4/perl_matcher_common.hpp ../../../boost/regex/v4/perl_matcher_non_recursive.hpp ../../../boost/regex/v4/perl_matcher_recursive.hpp ../../../boost/regex/v4/primary_transform.hpp ../../../boost/regex/v4/protected_call.hpp ../../../boost/regex/v4/regbase.hpp ../../../boost/regex/v4/regex.hpp ../../../boost/regex/v4/regex_cstring.hpp ../../../boost/regex/v4/regex_format.hpp ../../../boost/regex/v4/regex_fwd.hpp ../../../boost/regex/v4/regex_grep.hpp ../../../boost/regex/v4/regex_iterator.hpp ../../../boost/regex/v4/regex_kmp.hpp ../../../boost/regex/v4/regex_match.hpp ../../../boost/regex/v4/regex_merge.hpp ../../../boost/regex/v4/regex_raw_buffer.hpp ../../../boost/regex/v4/regex_replace.hpp ../../../boost/regex/v4/regex_search.hpp ../../../boost/regex/v4/regex_split.hpp ../../../boost/regex/v4/regex_stack.hpp ../../../boost/regex/v4/regex_token_iterator.hpp ../../../boost/regex/v4/regex_traits.hpp ../../../boost/regex/v4/regex_traits_defaults.hpp ../../../boost/regex/v4/regex_workaround.hpp ../../../boost/regex/v4/states.hpp ../../../boost/regex/v4/sub_match.hpp ../../../boost/regex/v4/syntax_type.hpp ../../../boost/regex/v4/u32regex_iterator.hpp ../../../boost/regex/v4/u32regex_token_iterator.hpp ../../../boost/regex/v4/w32_regex_traits.hpp ../../../boost/regex/config/borland.hpp ../../../boost/regex/config/cwchar.hpp

all : main_dir libboost_regex-vc7-mt-sp-1_34_dir ./vc7-stlport/libboost_regex-vc7-mt-sp-1_34.lib boost_regex-vc7-mt-p-1_34_dir ./vc7-stlport/boost_regex-vc7-mt-p-1_34.lib libboost_regex-vc7-mt-p-1_34_dir ./vc7-stlport/libboost_regex-vc7-mt-p-1_34.lib boost_regex-vc7-mt-gdp-1_34_dir ./vc7-stlport/boost_regex-vc7-mt-gdp-1_34.lib libboost_regex-vc7-mt-sgdp-1_34_dir ./vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.lib libboost_regex-vc7-mt-gdp-1_34_dir ./vc7-stlport/libboost_regex-vc7-mt-gdp-1_34.lib

clean :  libboost_regex-vc7-mt-sp-1_34_clean boost_regex-vc7-mt-p-1_34_clean libboost_regex-vc7-mt-p-1_34_clean boost_regex-vc7-mt-gdp-1_34_clean libboost_regex-vc7-mt-sgdp-1_34_clean libboost_regex-vc7-mt-gdp-1_34_clean

install : stlport_check all
	copy vc7-stlport\libboost_regex-vc7-mt-sp-1_34.lib "$(MSVCDIR)\lib"
	copy vc7-stlport\boost_regex-vc7-mt-p-1_34.lib "$(MSVCDIR)\lib"
	copy vc7-stlport\boost_regex-vc7-mt-p-1_34.dll "$(MSVCDIR)\bin"
	copy vc7-stlport\libboost_regex-vc7-mt-p-1_34.lib "$(MSVCDIR)\lib"
	copy vc7-stlport\boost_regex-vc7-mt-gdp-1_34.lib "$(MSVCDIR)\lib"
	copy vc7-stlport\boost_regex-vc7-mt-gdp-1_34.dll "$(MSVCDIR)\bin"
	copy vc7-stlport\boost_regex-vc7-mt-gdp-1_34.pdb "$(MSVCDIR)\lib"
	copy vc7-stlport\libboost_regex-vc7-mt-sgdp-1_34.lib "$(MSVCDIR)\lib"
	copy vc7-stlport\libboost_regex-vc7-mt-sgdp-1_34.pdb "$(MSVCDIR)\lib"
	copy vc7-stlport\libboost_regex-vc7-mt-gdp-1_34.lib "$(MSVCDIR)\lib"
	copy vc7-stlport\libboost_regex-vc7-mt-gdp-1_34.pdb "$(MSVCDIR)\lib"

main_dir :
	@if not exist "vc7-stlport\$(NULL)" mkdir vc7-stlport

stlport_check : "$(STLPORT_PATH)\stlport\string"
	echo


########################################################
#
# section for libboost_regex-vc7-mt-sp-1_34.lib
#
########################################################
vc7-stlport/libboost_regex-vc7-mt-sp-1_34/c_regex_traits.obj: ../src/c_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MT /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D_MT /DWIN32 /DNDEBUG /D_MBCS /D_LIB /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sp-1_34.pdb ../src/c_regex_traits.cpp

vc7-stlport/libboost_regex-vc7-mt-sp-1_34/cpp_regex_traits.obj: ../src/cpp_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MT /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D_MT /DWIN32 /DNDEBUG /D_MBCS /D_LIB /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sp-1_34.pdb ../src/cpp_regex_traits.cpp

vc7-stlport/libboost_regex-vc7-mt-sp-1_34/cregex.obj: ../src/cregex.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MT /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D_MT /DWIN32 /DNDEBUG /D_MBCS /D_LIB /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sp-1_34.pdb ../src/cregex.cpp

vc7-stlport/libboost_regex-vc7-mt-sp-1_34/fileiter.obj: ../src/fileiter.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MT /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D_MT /DWIN32 /DNDEBUG /D_MBCS /D_LIB /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sp-1_34.pdb ../src/fileiter.cpp

vc7-stlport/libboost_regex-vc7-mt-sp-1_34/icu.obj: ../src/icu.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MT /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D_MT /DWIN32 /DNDEBUG /D_MBCS /D_LIB /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sp-1_34.pdb ../src/icu.cpp

vc7-stlport/libboost_regex-vc7-mt-sp-1_34/instances.obj: ../src/instances.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MT /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D_MT /DWIN32 /DNDEBUG /D_MBCS /D_LIB /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sp-1_34.pdb ../src/instances.cpp

vc7-stlport/libboost_regex-vc7-mt-sp-1_34/posix_api.obj: ../src/posix_api.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MT /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D_MT /DWIN32 /DNDEBUG /D_MBCS /D_LIB /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sp-1_34.pdb ../src/posix_api.cpp

vc7-stlport/libboost_regex-vc7-mt-sp-1_34/regex.obj: ../src/regex.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MT /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D_MT /DWIN32 /DNDEBUG /D_MBCS /D_LIB /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sp-1_34.pdb ../src/regex.cpp

vc7-stlport/libboost_regex-vc7-mt-sp-1_34/regex_debug.obj: ../src/regex_debug.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MT /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D_MT /DWIN32 /DNDEBUG /D_MBCS /D_LIB /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sp-1_34.pdb ../src/regex_debug.cpp

vc7-stlport/libboost_regex-vc7-mt-sp-1_34/regex_raw_buffer.obj: ../src/regex_raw_buffer.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MT /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D_MT /DWIN32 /DNDEBUG /D_MBCS /D_LIB /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sp-1_34.pdb ../src/regex_raw_buffer.cpp

vc7-stlport/libboost_regex-vc7-mt-sp-1_34/regex_traits_defaults.obj: ../src/regex_traits_defaults.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MT /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D_MT /DWIN32 /DNDEBUG /D_MBCS /D_LIB /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sp-1_34.pdb ../src/regex_traits_defaults.cpp

vc7-stlport/libboost_regex-vc7-mt-sp-1_34/static_mutex.obj: ../src/static_mutex.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MT /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D_MT /DWIN32 /DNDEBUG /D_MBCS /D_LIB /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sp-1_34.pdb ../src/static_mutex.cpp

vc7-stlport/libboost_regex-vc7-mt-sp-1_34/usinstances.obj: ../src/usinstances.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MT /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D_MT /DWIN32 /DNDEBUG /D_MBCS /D_LIB /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sp-1_34.pdb ../src/usinstances.cpp

vc7-stlport/libboost_regex-vc7-mt-sp-1_34/w32_regex_traits.obj: ../src/w32_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MT /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D_MT /DWIN32 /DNDEBUG /D_MBCS /D_LIB /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sp-1_34.pdb ../src/w32_regex_traits.cpp

vc7-stlport/libboost_regex-vc7-mt-sp-1_34/wc_regex_traits.obj: ../src/wc_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MT /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D_MT /DWIN32 /DNDEBUG /D_MBCS /D_LIB /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sp-1_34.pdb ../src/wc_regex_traits.cpp

vc7-stlport/libboost_regex-vc7-mt-sp-1_34/wide_posix_api.obj: ../src/wide_posix_api.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MT /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D_MT /DWIN32 /DNDEBUG /D_MBCS /D_LIB /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sp-1_34.pdb ../src/wide_posix_api.cpp

vc7-stlport/libboost_regex-vc7-mt-sp-1_34/winstances.obj: ../src/winstances.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MT /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D_MT /DWIN32 /DNDEBUG /D_MBCS /D_LIB /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sp-1_34.pdb ../src/winstances.cpp

libboost_regex-vc7-mt-sp-1_34_dir :
	@if not exist "vc7-stlport\libboost_regex-vc7-mt-sp-1_34\$(NULL)" mkdir vc7-stlport\libboost_regex-vc7-mt-sp-1_34

libboost_regex-vc7-mt-sp-1_34_clean :
	del vc7-stlport\libboost_regex-vc7-mt-sp-1_34\*.obj
	del vc7-stlport\libboost_regex-vc7-mt-sp-1_34\*.idb
	del vc7-stlport\libboost_regex-vc7-mt-sp-1_34\*.exp
	del vc7-stlport\libboost_regex-vc7-mt-sp-1_34\*.pch

./vc7-stlport/libboost_regex-vc7-mt-sp-1_34.lib : vc7-stlport/libboost_regex-vc7-mt-sp-1_34/c_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/cpp_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/cregex.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/fileiter.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/icu.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/instances.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/posix_api.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/regex.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/regex_debug.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/regex_raw_buffer.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/regex_traits_defaults.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/static_mutex.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/usinstances.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/w32_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/wc_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/wide_posix_api.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/winstances.obj
	link -lib /nologo /out:vc7-stlport/libboost_regex-vc7-mt-sp-1_34.lib $(XSFLAGS)  vc7-stlport/libboost_regex-vc7-mt-sp-1_34/c_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/cpp_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/cregex.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/fileiter.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/icu.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/instances.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/posix_api.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/regex.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/regex_debug.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/regex_raw_buffer.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/regex_traits_defaults.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/static_mutex.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/usinstances.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/w32_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/wc_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/wide_posix_api.obj vc7-stlport/libboost_regex-vc7-mt-sp-1_34/winstances.obj

########################################################
#
# section for boost_regex-vc7-mt-p-1_34.lib
#
########################################################
vc7-stlport/boost_regex-vc7-mt-p-1_34/c_regex_traits.obj: ../src/c_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /I"$(STLPORT_PATH)\stlport" /Gy /I../../../ /DBOOST_REGEX_DYN_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-p-1_34.pdb ../src/c_regex_traits.cpp

vc7-stlport/boost_regex-vc7-mt-p-1_34/cpp_regex_traits.obj: ../src/cpp_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /I"$(STLPORT_PATH)\stlport" /Gy /I../../../ /DBOOST_REGEX_DYN_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-p-1_34.pdb ../src/cpp_regex_traits.cpp

vc7-stlport/boost_regex-vc7-mt-p-1_34/cregex.obj: ../src/cregex.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /I"$(STLPORT_PATH)\stlport" /Gy /I../../../ /DBOOST_REGEX_DYN_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-p-1_34.pdb ../src/cregex.cpp

vc7-stlport/boost_regex-vc7-mt-p-1_34/fileiter.obj: ../src/fileiter.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /I"$(STLPORT_PATH)\stlport" /Gy /I../../../ /DBOOST_REGEX_DYN_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-p-1_34.pdb ../src/fileiter.cpp

vc7-stlport/boost_regex-vc7-mt-p-1_34/icu.obj: ../src/icu.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /I"$(STLPORT_PATH)\stlport" /Gy /I../../../ /DBOOST_REGEX_DYN_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-p-1_34.pdb ../src/icu.cpp

vc7-stlport/boost_regex-vc7-mt-p-1_34/instances.obj: ../src/instances.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /I"$(STLPORT_PATH)\stlport" /Gy /I../../../ /DBOOST_REGEX_DYN_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-p-1_34.pdb ../src/instances.cpp

vc7-stlport/boost_regex-vc7-mt-p-1_34/posix_api.obj: ../src/posix_api.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /I"$(STLPORT_PATH)\stlport" /Gy /I../../../ /DBOOST_REGEX_DYN_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-p-1_34.pdb ../src/posix_api.cpp

vc7-stlport/boost_regex-vc7-mt-p-1_34/regex.obj: ../src/regex.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /I"$(STLPORT_PATH)\stlport" /Gy /I../../../ /DBOOST_REGEX_DYN_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-p-1_34.pdb ../src/regex.cpp

vc7-stlport/boost_regex-vc7-mt-p-1_34/regex_debug.obj: ../src/regex_debug.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /I"$(STLPORT_PATH)\stlport" /Gy /I../../../ /DBOOST_REGEX_DYN_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-p-1_34.pdb ../src/regex_debug.cpp

vc7-stlport/boost_regex-vc7-mt-p-1_34/regex_raw_buffer.obj: ../src/regex_raw_buffer.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /I"$(STLPORT_PATH)\stlport" /Gy /I../../../ /DBOOST_REGEX_DYN_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-p-1_34.pdb ../src/regex_raw_buffer.cpp

vc7-stlport/boost_regex-vc7-mt-p-1_34/regex_traits_defaults.obj: ../src/regex_traits_defaults.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /I"$(STLPORT_PATH)\stlport" /Gy /I../../../ /DBOOST_REGEX_DYN_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-p-1_34.pdb ../src/regex_traits_defaults.cpp

vc7-stlport/boost_regex-vc7-mt-p-1_34/static_mutex.obj: ../src/static_mutex.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /I"$(STLPORT_PATH)\stlport" /Gy /I../../../ /DBOOST_REGEX_DYN_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-p-1_34.pdb ../src/static_mutex.cpp

vc7-stlport/boost_regex-vc7-mt-p-1_34/usinstances.obj: ../src/usinstances.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /I"$(STLPORT_PATH)\stlport" /Gy /I../../../ /DBOOST_REGEX_DYN_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-p-1_34.pdb ../src/usinstances.cpp

vc7-stlport/boost_regex-vc7-mt-p-1_34/w32_regex_traits.obj: ../src/w32_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /I"$(STLPORT_PATH)\stlport" /Gy /I../../../ /DBOOST_REGEX_DYN_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-p-1_34.pdb ../src/w32_regex_traits.cpp

vc7-stlport/boost_regex-vc7-mt-p-1_34/wc_regex_traits.obj: ../src/wc_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /I"$(STLPORT_PATH)\stlport" /Gy /I../../../ /DBOOST_REGEX_DYN_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-p-1_34.pdb ../src/wc_regex_traits.cpp

vc7-stlport/boost_regex-vc7-mt-p-1_34/wide_posix_api.obj: ../src/wide_posix_api.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /I"$(STLPORT_PATH)\stlport" /Gy /I../../../ /DBOOST_REGEX_DYN_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-p-1_34.pdb ../src/wide_posix_api.cpp

vc7-stlport/boost_regex-vc7-mt-p-1_34/winstances.obj: ../src/winstances.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /I"$(STLPORT_PATH)\stlport" /Gy /I../../../ /DBOOST_REGEX_DYN_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-p-1_34.pdb ../src/winstances.cpp

boost_regex-vc7-mt-p-1_34_dir :
	@if not exist "vc7-stlport\boost_regex-vc7-mt-p-1_34\$(NULL)" mkdir vc7-stlport\boost_regex-vc7-mt-p-1_34

boost_regex-vc7-mt-p-1_34_clean :
	del vc7-stlport\boost_regex-vc7-mt-p-1_34\*.obj
	del vc7-stlport\boost_regex-vc7-mt-p-1_34\*.idb
	del vc7-stlport\boost_regex-vc7-mt-p-1_34\*.exp
	del vc7-stlport\boost_regex-vc7-mt-p-1_34\*.pch

./vc7-stlport/boost_regex-vc7-mt-p-1_34.lib : vc7-stlport/boost_regex-vc7-mt-p-1_34/c_regex_traits.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/cpp_regex_traits.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/cregex.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/fileiter.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/icu.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/instances.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/posix_api.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/regex.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/regex_debug.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/regex_raw_buffer.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/regex_traits_defaults.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/static_mutex.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/usinstances.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/w32_regex_traits.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/wc_regex_traits.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/wide_posix_api.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/winstances.obj
	link kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"vc7-stlport/boost_regex-vc7-mt-p-1_34.pdb" /debug /machine:I386 /out:"vc7-stlport/boost_regex-vc7-mt-p-1_34.dll" /implib:"vc7-stlport/boost_regex-vc7-mt-p-1_34.lib" /LIBPATH:"$(STLPORT_PATH)\lib" $(XLFLAGS) $(ICU_LINK_OPTS)  vc7-stlport/boost_regex-vc7-mt-p-1_34/c_regex_traits.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/cpp_regex_traits.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/cregex.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/fileiter.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/icu.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/instances.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/posix_api.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/regex.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/regex_debug.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/regex_raw_buffer.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/regex_traits_defaults.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/static_mutex.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/usinstances.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/w32_regex_traits.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/wc_regex_traits.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/wide_posix_api.obj vc7-stlport/boost_regex-vc7-mt-p-1_34/winstances.obj

########################################################
#
# section for libboost_regex-vc7-mt-p-1_34.lib
#
########################################################
vc7-stlport/libboost_regex-vc7-mt-p-1_34/c_regex_traits.obj: ../src/c_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-p-1_34.pdb ../src/c_regex_traits.cpp

vc7-stlport/libboost_regex-vc7-mt-p-1_34/cpp_regex_traits.obj: ../src/cpp_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-p-1_34.pdb ../src/cpp_regex_traits.cpp

vc7-stlport/libboost_regex-vc7-mt-p-1_34/cregex.obj: ../src/cregex.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-p-1_34.pdb ../src/cregex.cpp

vc7-stlport/libboost_regex-vc7-mt-p-1_34/fileiter.obj: ../src/fileiter.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-p-1_34.pdb ../src/fileiter.cpp

vc7-stlport/libboost_regex-vc7-mt-p-1_34/icu.obj: ../src/icu.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-p-1_34.pdb ../src/icu.cpp

vc7-stlport/libboost_regex-vc7-mt-p-1_34/instances.obj: ../src/instances.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-p-1_34.pdb ../src/instances.cpp

vc7-stlport/libboost_regex-vc7-mt-p-1_34/posix_api.obj: ../src/posix_api.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-p-1_34.pdb ../src/posix_api.cpp

vc7-stlport/libboost_regex-vc7-mt-p-1_34/regex.obj: ../src/regex.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-p-1_34.pdb ../src/regex.cpp

vc7-stlport/libboost_regex-vc7-mt-p-1_34/regex_debug.obj: ../src/regex_debug.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-p-1_34.pdb ../src/regex_debug.cpp

vc7-stlport/libboost_regex-vc7-mt-p-1_34/regex_raw_buffer.obj: ../src/regex_raw_buffer.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-p-1_34.pdb ../src/regex_raw_buffer.cpp

vc7-stlport/libboost_regex-vc7-mt-p-1_34/regex_traits_defaults.obj: ../src/regex_traits_defaults.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-p-1_34.pdb ../src/regex_traits_defaults.cpp

vc7-stlport/libboost_regex-vc7-mt-p-1_34/static_mutex.obj: ../src/static_mutex.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-p-1_34.pdb ../src/static_mutex.cpp

vc7-stlport/libboost_regex-vc7-mt-p-1_34/usinstances.obj: ../src/usinstances.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-p-1_34.pdb ../src/usinstances.cpp

vc7-stlport/libboost_regex-vc7-mt-p-1_34/w32_regex_traits.obj: ../src/w32_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-p-1_34.pdb ../src/w32_regex_traits.cpp

vc7-stlport/libboost_regex-vc7-mt-p-1_34/wc_regex_traits.obj: ../src/wc_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-p-1_34.pdb ../src/wc_regex_traits.cpp

vc7-stlport/libboost_regex-vc7-mt-p-1_34/wide_posix_api.obj: ../src/wide_posix_api.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-p-1_34.pdb ../src/wide_posix_api.cpp

vc7-stlport/libboost_regex-vc7-mt-p-1_34/winstances.obj: ../src/winstances.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MD /W3 /GX /O2 /GB /GF /Gy /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /DNDEBUG /DWIN32 /D_WINDOWS /D_MBCS /D_USRDLL /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-p-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-p-1_34.pdb ../src/winstances.cpp

libboost_regex-vc7-mt-p-1_34_dir :
	@if not exist "vc7-stlport\libboost_regex-vc7-mt-p-1_34\$(NULL)" mkdir vc7-stlport\libboost_regex-vc7-mt-p-1_34

libboost_regex-vc7-mt-p-1_34_clean :
	del vc7-stlport\libboost_regex-vc7-mt-p-1_34\*.obj
	del vc7-stlport\libboost_regex-vc7-mt-p-1_34\*.idb
	del vc7-stlport\libboost_regex-vc7-mt-p-1_34\*.exp
	del vc7-stlport\libboost_regex-vc7-mt-p-1_34\*.pch

./vc7-stlport/libboost_regex-vc7-mt-p-1_34.lib : vc7-stlport/libboost_regex-vc7-mt-p-1_34/c_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/cpp_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/cregex.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/fileiter.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/icu.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/instances.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/posix_api.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/regex.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/regex_debug.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/regex_raw_buffer.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/regex_traits_defaults.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/static_mutex.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/usinstances.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/w32_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/wc_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/wide_posix_api.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/winstances.obj
	link -lib /nologo /out:vc7-stlport/libboost_regex-vc7-mt-p-1_34.lib $(XSFLAGS)  vc7-stlport/libboost_regex-vc7-mt-p-1_34/c_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/cpp_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/cregex.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/fileiter.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/icu.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/instances.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/posix_api.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/regex.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/regex_debug.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/regex_raw_buffer.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/regex_traits_defaults.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/static_mutex.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/usinstances.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/w32_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/wc_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/wide_posix_api.obj vc7-stlport/libboost_regex-vc7-mt-p-1_34/winstances.obj

########################################################
#
# section for boost_regex-vc7-mt-gdp-1_34.lib
#
########################################################
vc7-stlport/boost_regex-vc7-mt-gdp-1_34/c_regex_traits.obj: ../src/c_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_DYN_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-gdp-1_34.pdb ../src/c_regex_traits.cpp

vc7-stlport/boost_regex-vc7-mt-gdp-1_34/cpp_regex_traits.obj: ../src/cpp_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_DYN_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-gdp-1_34.pdb ../src/cpp_regex_traits.cpp

vc7-stlport/boost_regex-vc7-mt-gdp-1_34/cregex.obj: ../src/cregex.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_DYN_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-gdp-1_34.pdb ../src/cregex.cpp

vc7-stlport/boost_regex-vc7-mt-gdp-1_34/fileiter.obj: ../src/fileiter.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_DYN_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-gdp-1_34.pdb ../src/fileiter.cpp

vc7-stlport/boost_regex-vc7-mt-gdp-1_34/icu.obj: ../src/icu.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_DYN_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-gdp-1_34.pdb ../src/icu.cpp

vc7-stlport/boost_regex-vc7-mt-gdp-1_34/instances.obj: ../src/instances.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_DYN_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-gdp-1_34.pdb ../src/instances.cpp

vc7-stlport/boost_regex-vc7-mt-gdp-1_34/posix_api.obj: ../src/posix_api.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_DYN_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-gdp-1_34.pdb ../src/posix_api.cpp

vc7-stlport/boost_regex-vc7-mt-gdp-1_34/regex.obj: ../src/regex.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_DYN_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-gdp-1_34.pdb ../src/regex.cpp

vc7-stlport/boost_regex-vc7-mt-gdp-1_34/regex_debug.obj: ../src/regex_debug.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_DYN_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-gdp-1_34.pdb ../src/regex_debug.cpp

vc7-stlport/boost_regex-vc7-mt-gdp-1_34/regex_raw_buffer.obj: ../src/regex_raw_buffer.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_DYN_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-gdp-1_34.pdb ../src/regex_raw_buffer.cpp

vc7-stlport/boost_regex-vc7-mt-gdp-1_34/regex_traits_defaults.obj: ../src/regex_traits_defaults.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_DYN_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-gdp-1_34.pdb ../src/regex_traits_defaults.cpp

vc7-stlport/boost_regex-vc7-mt-gdp-1_34/static_mutex.obj: ../src/static_mutex.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_DYN_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-gdp-1_34.pdb ../src/static_mutex.cpp

vc7-stlport/boost_regex-vc7-mt-gdp-1_34/usinstances.obj: ../src/usinstances.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_DYN_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-gdp-1_34.pdb ../src/usinstances.cpp

vc7-stlport/boost_regex-vc7-mt-gdp-1_34/w32_regex_traits.obj: ../src/w32_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_DYN_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-gdp-1_34.pdb ../src/w32_regex_traits.cpp

vc7-stlport/boost_regex-vc7-mt-gdp-1_34/wc_regex_traits.obj: ../src/wc_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_DYN_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-gdp-1_34.pdb ../src/wc_regex_traits.cpp

vc7-stlport/boost_regex-vc7-mt-gdp-1_34/wide_posix_api.obj: ../src/wide_posix_api.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_DYN_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-gdp-1_34.pdb ../src/wide_posix_api.cpp

vc7-stlport/boost_regex-vc7-mt-gdp-1_34/winstances.obj: ../src/winstances.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_DYN_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/boost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/boost_regex-vc7-mt-gdp-1_34.pdb ../src/winstances.cpp

boost_regex-vc7-mt-gdp-1_34_dir :
	@if not exist "vc7-stlport\boost_regex-vc7-mt-gdp-1_34\$(NULL)" mkdir vc7-stlport\boost_regex-vc7-mt-gdp-1_34

boost_regex-vc7-mt-gdp-1_34_clean :
	del vc7-stlport\boost_regex-vc7-mt-gdp-1_34\*.obj
	del vc7-stlport\boost_regex-vc7-mt-gdp-1_34\*.idb
	del vc7-stlport\boost_regex-vc7-mt-gdp-1_34\*.exp
	del vc7-stlport\boost_regex-vc7-mt-gdp-1_34\*.pch

./vc7-stlport/boost_regex-vc7-mt-gdp-1_34.lib : vc7-stlport/boost_regex-vc7-mt-gdp-1_34/c_regex_traits.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/cpp_regex_traits.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/cregex.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/fileiter.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/icu.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/instances.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/posix_api.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/regex.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/regex_debug.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/regex_raw_buffer.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/regex_traits_defaults.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/static_mutex.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/usinstances.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/w32_regex_traits.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/wc_regex_traits.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/wide_posix_api.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/winstances.obj
	link kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /incremental:yes /pdb:"vc7-stlport/boost_regex-vc7-mt-gdp-1_34.pdb" /debug /machine:I386 /out:"vc7-stlport/boost_regex-vc7-mt-gdp-1_34.dll" /implib:"vc7-stlport/boost_regex-vc7-mt-gdp-1_34.lib" /LIBPATH:"$(STLPORT_PATH)\lib" $(XLFLAGS) $(ICU_LINK_OPTS)  vc7-stlport/boost_regex-vc7-mt-gdp-1_34/c_regex_traits.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/cpp_regex_traits.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/cregex.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/fileiter.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/icu.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/instances.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/posix_api.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/regex.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/regex_debug.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/regex_raw_buffer.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/regex_traits_defaults.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/static_mutex.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/usinstances.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/w32_regex_traits.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/wc_regex_traits.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/wide_posix_api.obj vc7-stlport/boost_regex-vc7-mt-gdp-1_34/winstances.obj

########################################################
#
# section for libboost_regex-vc7-mt-sgdp-1_34.lib
#
########################################################
vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/c_regex_traits.obj: ../src/c_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MTd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D__STL_DEBUG /D_STLP_DEBUG /DWIN32 /D_MT /D_DEBUG /D_MBCS /D_LIB /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.pdb ../src/c_regex_traits.cpp

vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/cpp_regex_traits.obj: ../src/cpp_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MTd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D__STL_DEBUG /D_STLP_DEBUG /DWIN32 /D_MT /D_DEBUG /D_MBCS /D_LIB /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.pdb ../src/cpp_regex_traits.cpp

vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/cregex.obj: ../src/cregex.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MTd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D__STL_DEBUG /D_STLP_DEBUG /DWIN32 /D_MT /D_DEBUG /D_MBCS /D_LIB /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.pdb ../src/cregex.cpp

vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/fileiter.obj: ../src/fileiter.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MTd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D__STL_DEBUG /D_STLP_DEBUG /DWIN32 /D_MT /D_DEBUG /D_MBCS /D_LIB /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.pdb ../src/fileiter.cpp

vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/icu.obj: ../src/icu.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MTd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D__STL_DEBUG /D_STLP_DEBUG /DWIN32 /D_MT /D_DEBUG /D_MBCS /D_LIB /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.pdb ../src/icu.cpp

vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/instances.obj: ../src/instances.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MTd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D__STL_DEBUG /D_STLP_DEBUG /DWIN32 /D_MT /D_DEBUG /D_MBCS /D_LIB /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.pdb ../src/instances.cpp

vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/posix_api.obj: ../src/posix_api.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MTd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D__STL_DEBUG /D_STLP_DEBUG /DWIN32 /D_MT /D_DEBUG /D_MBCS /D_LIB /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.pdb ../src/posix_api.cpp

vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/regex.obj: ../src/regex.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MTd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D__STL_DEBUG /D_STLP_DEBUG /DWIN32 /D_MT /D_DEBUG /D_MBCS /D_LIB /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.pdb ../src/regex.cpp

vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/regex_debug.obj: ../src/regex_debug.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MTd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D__STL_DEBUG /D_STLP_DEBUG /DWIN32 /D_MT /D_DEBUG /D_MBCS /D_LIB /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.pdb ../src/regex_debug.cpp

vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/regex_raw_buffer.obj: ../src/regex_raw_buffer.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MTd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D__STL_DEBUG /D_STLP_DEBUG /DWIN32 /D_MT /D_DEBUG /D_MBCS /D_LIB /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.pdb ../src/regex_raw_buffer.cpp

vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/regex_traits_defaults.obj: ../src/regex_traits_defaults.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MTd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D__STL_DEBUG /D_STLP_DEBUG /DWIN32 /D_MT /D_DEBUG /D_MBCS /D_LIB /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.pdb ../src/regex_traits_defaults.cpp

vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/static_mutex.obj: ../src/static_mutex.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MTd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D__STL_DEBUG /D_STLP_DEBUG /DWIN32 /D_MT /D_DEBUG /D_MBCS /D_LIB /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.pdb ../src/static_mutex.cpp

vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/usinstances.obj: ../src/usinstances.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MTd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D__STL_DEBUG /D_STLP_DEBUG /DWIN32 /D_MT /D_DEBUG /D_MBCS /D_LIB /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.pdb ../src/usinstances.cpp

vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/w32_regex_traits.obj: ../src/w32_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MTd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D__STL_DEBUG /D_STLP_DEBUG /DWIN32 /D_MT /D_DEBUG /D_MBCS /D_LIB /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.pdb ../src/w32_regex_traits.cpp

vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/wc_regex_traits.obj: ../src/wc_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MTd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D__STL_DEBUG /D_STLP_DEBUG /DWIN32 /D_MT /D_DEBUG /D_MBCS /D_LIB /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.pdb ../src/wc_regex_traits.cpp

vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/wide_posix_api.obj: ../src/wide_posix_api.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MTd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D__STL_DEBUG /D_STLP_DEBUG /DWIN32 /D_MT /D_DEBUG /D_MBCS /D_LIB /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.pdb ../src/wide_posix_api.cpp

vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/winstances.obj: ../src/winstances.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MTd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I..\..\..\ /D__STL_DEBUG /D_STLP_DEBUG /DWIN32 /D_MT /D_DEBUG /D_MBCS /D_LIB /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.pdb ../src/winstances.cpp

libboost_regex-vc7-mt-sgdp-1_34_dir :
	@if not exist "vc7-stlport\libboost_regex-vc7-mt-sgdp-1_34\$(NULL)" mkdir vc7-stlport\libboost_regex-vc7-mt-sgdp-1_34

libboost_regex-vc7-mt-sgdp-1_34_clean :
	del vc7-stlport\libboost_regex-vc7-mt-sgdp-1_34\*.obj
	del vc7-stlport\libboost_regex-vc7-mt-sgdp-1_34\*.idb
	del vc7-stlport\libboost_regex-vc7-mt-sgdp-1_34\*.exp
	del vc7-stlport\libboost_regex-vc7-mt-sgdp-1_34\*.pch

./vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.lib : vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/c_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/cpp_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/cregex.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/fileiter.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/icu.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/instances.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/posix_api.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/regex.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/regex_debug.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/regex_raw_buffer.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/regex_traits_defaults.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/static_mutex.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/usinstances.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/w32_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/wc_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/wide_posix_api.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/winstances.obj
	link -lib /nologo /out:vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34.lib $(XSFLAGS)  vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/c_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/cpp_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/cregex.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/fileiter.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/icu.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/instances.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/posix_api.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/regex.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/regex_debug.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/regex_raw_buffer.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/regex_traits_defaults.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/static_mutex.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/usinstances.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/w32_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/wc_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/wide_posix_api.obj vc7-stlport/libboost_regex-vc7-mt-sgdp-1_34/winstances.obj

########################################################
#
# section for libboost_regex-vc7-mt-gdp-1_34.lib
#
########################################################
vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/c_regex_traits.obj: ../src/c_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-gdp-1_34.pdb ../src/c_regex_traits.cpp

vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/cpp_regex_traits.obj: ../src/cpp_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-gdp-1_34.pdb ../src/cpp_regex_traits.cpp

vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/cregex.obj: ../src/cregex.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-gdp-1_34.pdb ../src/cregex.cpp

vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/fileiter.obj: ../src/fileiter.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-gdp-1_34.pdb ../src/fileiter.cpp

vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/icu.obj: ../src/icu.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-gdp-1_34.pdb ../src/icu.cpp

vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/instances.obj: ../src/instances.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-gdp-1_34.pdb ../src/instances.cpp

vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/posix_api.obj: ../src/posix_api.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-gdp-1_34.pdb ../src/posix_api.cpp

vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/regex.obj: ../src/regex.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-gdp-1_34.pdb ../src/regex.cpp

vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/regex_debug.obj: ../src/regex_debug.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-gdp-1_34.pdb ../src/regex_debug.cpp

vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/regex_raw_buffer.obj: ../src/regex_raw_buffer.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-gdp-1_34.pdb ../src/regex_raw_buffer.cpp

vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/regex_traits_defaults.obj: ../src/regex_traits_defaults.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-gdp-1_34.pdb ../src/regex_traits_defaults.cpp

vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/static_mutex.obj: ../src/static_mutex.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-gdp-1_34.pdb ../src/static_mutex.cpp

vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/usinstances.obj: ../src/usinstances.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-gdp-1_34.pdb ../src/usinstances.cpp

vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/w32_regex_traits.obj: ../src/w32_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-gdp-1_34.pdb ../src/w32_regex_traits.cpp

vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/wc_regex_traits.obj: ../src/wc_regex_traits.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-gdp-1_34.pdb ../src/wc_regex_traits.cpp

vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/wide_posix_api.obj: ../src/wide_posix_api.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-gdp-1_34.pdb ../src/wide_posix_api.cpp

vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/winstances.obj: ../src/winstances.cpp $(ALL_HEADER)
	cl $(INCLUDES) /nologo /MDd /W3 /Gm /GX /Zi /Od /I"$(STLPORT_PATH)\stlport" /I../../../ /DBOOST_REGEX_STATIC_LINK /D__STL_DEBUG /D_STLP_DEBUG /D_DEBUG /DWIN32 /D_WINDOWS /D_MBCS /DUSRDLL /GX /RTC1 /Zc:wchar_t /c $(CXXFLAGS) $(ICU_COMPILE_OPTS) -Y- -Fo./vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/ -Fdvc7-stlport/libboost_regex-vc7-mt-gdp-1_34.pdb ../src/winstances.cpp

libboost_regex-vc7-mt-gdp-1_34_dir :
	@if not exist "vc7-stlport\libboost_regex-vc7-mt-gdp-1_34\$(NULL)" mkdir vc7-stlport\libboost_regex-vc7-mt-gdp-1_34

libboost_regex-vc7-mt-gdp-1_34_clean :
	del vc7-stlport\libboost_regex-vc7-mt-gdp-1_34\*.obj
	del vc7-stlport\libboost_regex-vc7-mt-gdp-1_34\*.idb
	del vc7-stlport\libboost_regex-vc7-mt-gdp-1_34\*.exp
	del vc7-stlport\libboost_regex-vc7-mt-gdp-1_34\*.pch

./vc7-stlport/libboost_regex-vc7-mt-gdp-1_34.lib : vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/c_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/cpp_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/cregex.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/fileiter.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/icu.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/instances.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/posix_api.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/regex.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/regex_debug.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/regex_raw_buffer.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/regex_traits_defaults.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/static_mutex.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/usinstances.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/w32_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/wc_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/wide_posix_api.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/winstances.obj
	link -lib /nologo /out:vc7-stlport/libboost_regex-vc7-mt-gdp-1_34.lib $(XSFLAGS)  vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/c_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/cpp_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/cregex.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/fileiter.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/icu.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/instances.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/posix_api.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/regex.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/regex_debug.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/regex_raw_buffer.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/regex_traits_defaults.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/static_mutex.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/usinstances.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/w32_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/wc_regex_traits.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/wide_posix_api.obj vc7-stlport/libboost_regex-vc7-mt-gdp-1_34/winstances.obj

