import Mathlib
import Theorems.Thm_fermat_last_theorem

/-- Solution side: the same statement, binder for binder, proved by this tree's `fermat_last_theorem`. -/
theorem FLT_for_comparator (n : ℕ) (hn : 3 ≤ n) (a b c : ℕ) (ha : 0 < a) (hb : 0 < b) (hc : 0 < c) :
    a ^ n + b ^ n ≠ c ^ n :=
  fermat_last_theorem n hn a b c ha hb hc

/-- Mathlib's named proposition, by the one-line bridge from the elementary statement
(the bridge is restated inline so that this file depends only on `Theorems.Thm_fermat_last_theorem`). -/
theorem FLT_mathlib_for_comparator : FermatLastTheorem :=
  fun n hn a b c ha hb hc => fermat_last_theorem n hn a b c (Nat.pos_of_ne_zero ha) (Nat.pos_of_ne_zero hb) (Nat.pos_of_ne_zero hc)
