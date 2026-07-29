import GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean.ParityCondition

/-!
# Linnik Theorem Package
-/

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure LinnikTheoremPackage {P : ParityConditionPackage} where
  linnikConstant : ℕ
  leastPrimeInAP : Prop
  effectiveBound : Prop

structure LinnikTheoremEvidence {P : ParityConditionPackage} (L : LinnikTheoremPackage L) where
  leastPrimeInAPClosed : L.leastPrimeInAP
  effectiveBoundClosed : L.effectiveBound

def LinnikTheoremClosed {P : ParityConditionPackage} (L : LinnikTheoremPackage L) : Prop :=
  L.leastPrimeInAP ∧ L.effectiveBound

theorem linnik_theorem_closed_from_evidence
    {P : ParityConditionPackage} (L : LinnikTheoremPackage L) (E : LinnikTheoremEvidence L) :
    LinnikTheoremClosed L := by
  exact And.intro E.leastPrimeInAPClosed E.effectiveBoundClosed

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse
