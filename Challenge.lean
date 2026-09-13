import Mathlib

/-- Fermat's Last Theorem — the elementary statement over the natural numbers, written out in full.
This is, binder for binder, the statement of `fermat_last_theorem` in `Theorems/Thm_fermat_last_theorem.lean`:
for every exponent `n ≥ 3` there are no positive natural numbers `a`, `b`, `c` with `a ^ n + b ^ n = c ^ n`.
Trusted file: imports only Mathlib; the proofs are deliberately `sorry` (comparator's challenge/solution protocol). -/
theorem FLT_for_comparator (n : ℕ) (hn : 3 ≤ n) (a b c : ℕ) (ha : 0 < a) (hb : 0 < b) (hc : 0 < c) :
    a ^ n + b ^ n ≠ c ^ n :=
  sorry

/-- The same fact phrased as Mathlib's own named proposition `FermatLastTheorem`
(Mathlib.NumberTheory.FLT.Basic: `∀ n ≥ 3, FermatLastTheoremFor n`, i.e. no solutions in nonzero naturals). -/
theorem FLT_mathlib_for_comparator : FermatLastTheorem :=
  sorry
