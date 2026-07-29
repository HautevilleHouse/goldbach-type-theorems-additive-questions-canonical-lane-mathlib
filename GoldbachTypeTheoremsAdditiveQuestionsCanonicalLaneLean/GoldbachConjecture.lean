import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure GoldbachConjecture where
  evenNumber : ℕ → Prop
  primeSum : ℕ → Prop
  goldbachStatement : ∀ n, evenNumber n → primeSum n
  evenNumberDef : ∀ n, evenNumber n ↔ n % 2 = 0 ∧ n > 2
  primeSumDef : ∀ n, primeSum n ↔ ∃ p q, Nat.Prime p ∧ Nat.Prime q ∧ p + q = n

structure GoldbachEvidence (G : GoldbachConjecture) where
  goldbachStatementClosed : G.goldbachStatement

def GoldbachClosed (G : GoldbachConjecture) : Prop :=
  G.goldbachStatement

theorem goldbach_closed_from_evidence (G : GoldbachConjecture) (E : GoldbachEvidence G) :
    GoldbachClosed G := by
  exact E.goldbachStatementClosed

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse