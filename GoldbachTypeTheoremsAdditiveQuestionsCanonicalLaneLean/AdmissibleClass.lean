import GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure AdmissibleClass where
  object : GoldbachAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GoldbachWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse
