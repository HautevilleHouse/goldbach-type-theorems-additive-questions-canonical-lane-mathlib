import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure CircleMethodEstimate where
  majorArcs : Prop
  minorArcs : Prop
  integralBound : ℝ
  errorTerm : ℝ

def CircleMethodClosed (C : CircleMethodEstimate) : Prop :=
  C.majorArcs ∧ C.minorArcs ∧ C.errorTerm ≤ C.integralBound

theorem circle_method_closed_from_evidence (C : CircleMethodEstimate) (hMajor : C.majorArcs) (hMinor : C.minorArcs) (hError : C.errorTerm ≤ C.integralBound) :
    CircleMethodClosed C := by
  exact And.intro hMajor (And.intro hMinor hError)

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse