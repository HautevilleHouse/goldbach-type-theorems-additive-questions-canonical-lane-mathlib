import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure ExceptionalSet where
  exceptionalEvenNumbers : Set ℕ
  exceptionalCount : ℕ → ℕ
  densityZero : ∀ ε > 0, ∃ N, ∀ n ≥ N, exceptionalCount n < ε * n
  ramanujanProperty : ∀ n, n ∉ exceptionalEvenNumbers → ∃ p q, p + q = n ∧ prime p ∧ prime q

structure ExceptionalSetEvidence (E : ExceptionalSet) where
  densityZeroClosed : E.densityZero
  ramanujanPropertyClosed : E.ramanujanProperty

def ExceptionalSetClosed (E : ExceptionalSet) : Prop :=
  E.densityZero ∧ E.ramanujanProperty

theorem exceptional_set_closed_from_evidence (E : ExceptionalSet) (Ev : ExceptionalSetEvidence E) :
    ExceptionalSetClosed E := by
  exact And.intro Ev.densityZeroClosed Ev.ramanujanPropertyClosed

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse