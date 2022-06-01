type t = A1 | A2 | B of t

(*@ function f (x: t): unit =
    match x with
    | A1 | A2
    | B A2 | B A1
    | B (B A1) | B (B A2)
    | B (B (B A1))
    | B (B (B A2)) -> () *)

(* {gospel_expected|
   [125] File "base.mli", line 4, characters 4-118:
         Error: This pattern-matching is not exhaustive.
                Here is an example of a case that is not matched:
                  B B B B _.
   |gospel_expected} *)
