import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure AdditiveBasis where
  evenSet : Set ℕ
  primeSet : Set ℕ
  sumSet : Set ℕ
  evenInfinite : Infinite evenSet
  primeInfinite : Infinite primeSet
  sumContainsAllEven : ∀ n, n ∈ evenSet → n ∈ sumSet
  goldbachProperty : ∀ n, n ∈ evenSet → ∃ p q, p ∈ primeSet ∧ q ∈ primeSet ∧ p + q = n

structure AdditiveBasisEvidence (A : AdditiveBasis) where
  evenInfiniteClosed : A.evenInfinite
  primeInfiniteClosed : A.primeInfinite
  sumContainsAllEvenClosed : A.sumContainsAllEven
  goldbachPropertyClosed : A.goldbachProperty

def AdditiveBasisClosed (A : AdditiveBasis) : Prop :=
  A.evenInfinite ∧ A.primeInfinite ∧ A.sumContainsAllEven ∧ A.goldbachProperty

theorem additive_basis_closed_from_evidence (A : AdditiveBasis) (E : AdditiveBasisEvidence A) :
    AdditiveBasisClosed A := by
  exact And.intro E.evenInfiniteClosed
    (And.intro E.primeInfiniteClosed
      (And.intro E.sumContainsAllEvenClosed E.goldbachPropertyClosed))

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse