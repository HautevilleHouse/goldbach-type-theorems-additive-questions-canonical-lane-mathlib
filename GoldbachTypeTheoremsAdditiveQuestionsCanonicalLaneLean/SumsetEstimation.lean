import GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean.RiemannianCurvature

/-!
# Sumset Estimation Package for additive combinatorial bounds
-/

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure SumsetEstimationPackage where
  additiveGroup : Type
  doublingConstant : ℕ
  sumsetBound : Prop
  smallDoubling : Prop
  structureTheorem : Prop

structure SumsetEstimationEvidence (S : SumsetEstimationPackage) where
  sumsetBoundClosed : S.sumsetBound
  smallDoublingClosed : S.smallDoubling
  structureTheoremClosed : S.structureTheorem

def SumsetEstimationClosed (S : SumsetEstimationPackage) : Prop :=
  S.sumsetBound ∧ S.smallDoubling ∧ S.structureTheorem

theorem sumset_estimation_closed_from_evidence
    (S : SumsetEstimationPackage) (E : SumsetEstimationEvidence S) :
    SumsetEstimationClosed S := by
  exact And.intro E.sumsetBoundClosed
    (And.intro E.smallDoublingClosed E.structureTheoremClosed)

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse