import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def bridgeClosed (A : AdmissibleClass) : Prop :=
  goldbachConjectureStatement

theorem bridge_from_admissible_class (A : AdmissibleClass) (G : GoldbachObject) : bridgeClosed A := by
  exact G.goldbachSatisfied

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse