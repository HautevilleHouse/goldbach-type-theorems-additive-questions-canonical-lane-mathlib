import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure TernaryGoldbach where
  oddSet : Set ℕ
  primeSet : Set ℕ
  oddLargeEnough : ∀ n, n ∈ oddSet → n ≥ 5
  ternaryStatement : ∀ n, n ∈ oddSet → ∃ p q r, p ∈ primeSet ∧ q ∈ primeSet ∧ r ∈ primeSet ∧ p + q + r = n
  oddInfinite : Infinite oddSet

structure TernaryGoldbachEvidence (T : TernaryGoldbach) where
  oddLargeEnoughClosed : T.oddLargeEnough
  ternaryStatementClosed : T.ternaryStatement

def TernaryGoldbachClosed (T : TernaryGoldbach) : Prop :=
  T.oddLargeEnough ∧ T.ternaryStatement

theorem ternary_goldbach_closed_from_evidence (T : TernaryGoldbach) (E : TernaryGoldbachEvidence T) :
    TernaryGoldbachClosed T := by
  exact And.intro E.oddLargeEnoughClosed E.ternaryStatementClosed

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse