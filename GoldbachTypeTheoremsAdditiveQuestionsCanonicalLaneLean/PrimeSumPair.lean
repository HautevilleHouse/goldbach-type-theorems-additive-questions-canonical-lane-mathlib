import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure PrimeSumPair where
  p : ℕ
  q : ℕ
  hprime_p : Nat.Prime p
  hprime_q : Nat.Prime q
  sum : ℕ
  hsum : p + q = sum

structure PrimeSumPairEvidence (s : PrimeSumPair) where
  sumEven : Even s.sum
  goldbachWitness : s.sum ≥ 4 → (∃ (p q : ℕ), Nat.Prime p ∧ Nat.Prime q ∧ p + q = s.sum)

def PrimeSumPairClosed (s : PrimeSumPair) : Prop :=
  (Even s.sum) ∧ (s.sum ≥ 4 → (∃ (p q : ℕ), Nat.Prime p ∧ Nat.Prime q ∧ p + q = s.sum))

theorem prime_sum_pair_closed_from_evidence (s : PrimeSumPair) (e : PrimeSumPairEvidence s) :
    PrimeSumPairClosed s := by
  exact And.intro e.sumEven e.goldbachWitness

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse