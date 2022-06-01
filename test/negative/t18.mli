(**************************************************************************)
(*                                                                        *)
(*  GOSPEL -- A Specification Language for OCaml                          *)
(*                                                                        *)
(*  Copyright (c) 2018- The VOCaL Project                                 *)
(*                                                                        *)
(*  This software is free software, distributed under the MIT license     *)
(*  (as described in file LICENSE enclosed).                              *)
(**************************************************************************)

val f : z:int -> int -> int
(*@ r = f ~x y*)

(* ERROR:
   Line 12
   first parameter does not match the name in the type
   remove replace x by z in line 12 *)

(* {gospel_expected|
   [125] File "t18.mli", line 12, characters 8-9:
         Error: Type checking error: parameter do not match with val type.
   |gospel_expected} *)
