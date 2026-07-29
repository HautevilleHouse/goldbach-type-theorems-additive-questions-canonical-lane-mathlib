import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure GoldbachTypeObject where
  evenNumber : ℕ
  representationCount : ℕ → ℕ
  primeSet : Set ℕ

structure GoldbachAdmissibleObject where
  object : GoldbachTypeObject
  evenNumberAtLeastFour : object.evenNumber ≥ 4
  representationPositive : ∀ n, n ≥ 4 → object.representationCount n > 0

structure GoldbachAdmissibleClass where
  object : GoldbachAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def GoldbachAdmittedClosure (A : GoldbachAdmissibleClass) : Prop :=
  (A.object.representationPositive A.object.object.evenNumber) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse