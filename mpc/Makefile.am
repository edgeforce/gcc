## Makefile.am -- Process this file with automake to produce Makefile.in
##
## Copyright (C) 2008, 2010, 2011, 2012, 2013, 2014, 2020, 2022 INRIA
##
## This file is part of GNU MPC.
##
## GNU MPC is free software; you can redistribute it and/or modify it under
## the terms of the GNU Lesser General Public License as published by the
## Free Software Foundation; either version 3 of the License, or (at your
## option) any later version.
##
## GNU MPC is distributed in the hope that it will be useful, but WITHOUT ANY
## WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
## FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for
## more details.
##
## You should have received a copy of the GNU Lesser General Public License
## along with this program. If not, see http://www.gnu.org/licenses/ .

ACLOCAL_AMFLAGS = -I m4

# version number for distribution tarball
# VERSION = @VERSION@@GITVERSION@ # for development version
VERSION = @VERSION@

SUBDIRS = src tests doc tools

EXTRA_HEADERS = src/mpc-log.h
include_HEADERS = src/mpc.h @MPC_LOG_H@
EXTRA_DIST = doc/fdl-1.3.texi src/mpc-log.h

bench :
	cd tools/bench && $(MAKE) $(AM_MAKEFLAGS) bench

mpcheck :
	cd tools/mpcheck && $(MAKE) $(AM_MAKEFLAGS) mpcheck

