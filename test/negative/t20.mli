(**************************************************************************)
(*                                                                        *)
(*  GOSPEL -- A Specification Language for OCaml                          *)
(*                                                                        *)
(*  Copyright (c) 2018- The VOCaL Project                                 *)
(*                                                                        *)
(*  This software is free software, distributed under the MIT license     *)
(*  (as described in file LICENSE enclosed).                              *)
(**************************************************************************)

val f : ?y:int -> int -> int
(*@ r = f ~y x*)

(* ERROR:
   Line 12
   the first parameter is optional but named in spec header
   replace ~ by ? line 12 *)

(* {gospel_expected|
   [125] File "t20.mli", line 12, characters 8-9:
         Error: Type checking error: parameter do not match with val type.
   |gospel_expected} *)
