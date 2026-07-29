import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure VinogradovTheorem where
  oddLargeEnough : ℕ
  ternaryGoldbachHolds : ∀ n ≥ oddLargeEnough, n % 2 = 1 → ∃ p q r, Nat.Prime p ∧ Nat.Prime q ∧ Nat.Prime r ∧ p + q + r = n
  oddLargeEnoughBound : Prop
  effectiveConstant : ℕ

structure VinogradovEvidence (V : VinogradovTheorem) where
  ternaryGoldbachHoldsClosed : V.ternaryGoldbachHolds
  oddLargeEnoughBoundClosed : V.oddLargeEnoughBound

def VinogradovClosed (V : VinogradovTheorem) : Prop :=
  V.ternaryGoldbachHolds ∧ V.oddLargeEnoughBound

theorem vinogradov_closed_from_evidence (V : VinogradovTheorem) (E : VinogradovEvidence V) :
    VinogradovClosed V := by
  exact And.intro E.ternaryGoldbachHoldsClosed E.oddLargeEnoughBoundClosed

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse