import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

def ConstrainedGoldbachClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_goldbach_endgame (A : AdmissibleClass) (G : GoldbachObject) : ConstrainedGoldbachClosure A := by
  exact And.intro (bridge_from_admissible_class A G) (gate_from_admissible_class A)

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse