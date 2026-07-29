import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

def bridgeClosed (A : GoldbachAdmissibleClass) : Prop :=
  A.object.representationPositive A.object.object.evenNumber

theorem bridge_from_admissible_class (A : GoldbachAdmissibleClass) : bridgeClosed A := by
  exact A.object.representationPositive A.object.object.evenNumber

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse