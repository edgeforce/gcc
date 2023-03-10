(* Copyright (C) 2010 Free Software Foundation, Inc. *)
(* This file is part of GNU Modula-2.

GNU Modula-2 is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free
Software Foundation; either version 2, or (at your option) any later
version.

GNU Modula-2 is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
for more details.

You should have received a copy of the GNU General Public License along
with gm2; see the file COPYING.  If not, write to the Free Software
Foundation, 51 Franklin Street, Fifth Floor,
Boston, MA 02110-1301, USA. *)

MODULE align7 ;

FROM SYSTEM IMPORT ADR, ADDRESS ;
FROM libc IMPORT exit ;

TYPE
   foo = ARRAY [0..255] OF INTEGER <* bytealignment(1024) *> ;

VAR
   x  : CHAR ;
   z  : foo ;
BEGIN
   IF ADR(z) MOD 1024 = ADDRESS(0)
   THEN
      exit(0)
   ELSE
      exit(1)
   END
END align7.
