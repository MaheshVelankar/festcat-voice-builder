#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT([festcat-voice-builder], [0.1], [sergioller@gmail.com])

# Checks for programs.
AC_PROG_CC
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET

# wget
AC_PATH_PROG([WGET], [wget], [/usr/bin], [$PATH:/usr/bin])
if test ! -f "$WGET"; then
	AC_MSG_ERROR(Can't find wget)
fi
AC_SUBST(WGET)

# sox
AC_PATH_PROG([SOX], [sox], [/usr/bin], [$PATH:/usr/bin])
if test ! -f "$SOX"; then
	AC_MSG_ERROR(Can't find sox)
fi
AC_SUBST(SOX)



# Checks for libraries.

# Checks for header files.

# Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_SIZE_T

AC_ARG_VAR(htk_user,AS_HELP_STRING([htk_user=USERNAME],[specify the HTK website user name]))

if test "x${htk_user}" = "x" ; then
   AC_MSG_ERROR([htk_user=USERNAME environment variable not set])
fi
AC_SUBST([htk_user])


AC_ARG_VAR(htk_password,AS_HELP_STRING([htk_password=PASSWORD],[specify the HTK website password]))
if test "x${htk_password}" = "x" ; then
   AC_MSG_ERROR([htk_password=PASSWORD environment variable not set])
fi
AC_SUBST([htk_password])

AC_SUBST(PWD)

WORKDIR=$PWD/work
AC_ARG_VAR(WORKDIR,AS_HELP_STRING([WORKDIR=/directory/to/work/on],[specify the directory to work on]))
AC_SUBST(WORKDIR)

AC_CONFIG_FILES([Makefile deps/Makefile data/en/Makefile data/ca/Makefile data/fr/Makefile data/mr/Makefile])

AC_OUTPUT

