import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure CircleMethodPackage (A : AdmissibleClass) where
  majorArcApproximation : Prop
  minorArcBound : Prop
  exponentialSumEstimates : Prop
  singularSeriesConvergence : Prop

structure CircleMethodEvidence {A : AdmissibleClass} (C : CircleMethodPackage A) where
  majorArcApproximationClosed : C.majorArcApproximation
  minorArcBoundClosed : C.minorArcBound
  exponentialSumEstimatesClosed : C.exponentialSumEstimates
  singularSeriesConvergenceClosed : C.singularSeriesConvergence

def CircleMethodClosed {A : AdmissibleClass} (C : CircleMethodPackage A) : Prop :=
  C.majorArcApproximation ∧ C.minorArcBound ∧ C.exponentialSumEstimates ∧ C.singularSeriesConvergence

theorem circle_method_closed_from_evidence {A : AdmissibleClass} (C : CircleMethodPackage A) (E : CircleMethodEvidence C) : CircleMethodClosed C := by
  exact And.intro E.majorArcApproximationClosed (And.intro E.minorArcBoundClosed (And.intro E.exponentialSumEstimatesClosed E.singularSeriesConvergenceClosed))

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse