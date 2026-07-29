import GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GoldbachWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse
