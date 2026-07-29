import GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean.ExponentialSums

/-!
# Circle Method Package
-/

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure CircleMethodPackage {E : ExponentialSumsPackage} where
  majorArcs : Prop
  minorArcs : Prop
  singularSeries : Prop
  singularIntegral : Prop

structure CircleMethodEvidence {E : ExponentialSumsPackage} (C : CircleMethodPackage C) where
  majorArcsClosed : C.majorArcs
  minorArcsClosed : C.minorArcs
  singularSeriesClosed : C.singularSeries
  singularIntegralClosed : C.singularIntegral

def CircleMethodClosed {E : ExponentialSumsPackage} (C : CircleMethodPackage C) : Prop :=
  C.majorArcs ∧ C.minorArcs ∧ C.singularSeries ∧ C.singularIntegral

theorem circle_method_closed_from_evidence
    {E : ExponentialSumsPackage} (C : CircleMethodPackage C) (E : CircleMethodEvidence C) :
    CircleMethodClosed C := by
  exact And.intro E.majorArcsClosed (And.intro E.minorArcsClosed (And.intro E.singularSeriesClosed E.singularIntegralClosed))

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse
