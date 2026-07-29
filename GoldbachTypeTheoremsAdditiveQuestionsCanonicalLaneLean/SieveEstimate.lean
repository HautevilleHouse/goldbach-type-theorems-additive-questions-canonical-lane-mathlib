import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure SieveEstimate where
  bound : ℝ
  validityLower : ℝ
  validityUpper : ℝ
  errorBound : ℝ

def SieveClosed (S : SieveEstimate) : Prop :=
  S.errorBound ≤ 0.1 ∧ S.validityLower ≤ S.validityUpper

theorem sieve_closed_iff (S : SieveEstimate) :
    SieveClosed S ↔ (S.errorBound ≤ 0.1 ∧ S.validityLower ≤ S.validityUpper) := by
  constructor
  · intro h; exact h
  · intro h; exact h

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse