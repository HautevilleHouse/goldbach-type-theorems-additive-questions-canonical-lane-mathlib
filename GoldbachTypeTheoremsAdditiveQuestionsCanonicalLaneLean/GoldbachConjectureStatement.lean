import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

def goldbachConjectureStatement : Prop :=
  ∀ (n : ℕ), n ≥ 4 → n % 2 = 0 → ∃ (p q : ℕ), Nat.Prime p ∧ Nat.Prime q ∧ p + q = n

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse