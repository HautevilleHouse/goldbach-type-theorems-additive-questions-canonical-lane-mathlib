import GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean.CircleMethod

/-!
# Parity Condition Package
-/

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure ParityConditionPackage {C : CircleMethodPackage} where
  parityProblem : Prop
  sieveUpperBound : Prop
  buchstabFunction : Prop

structure ParityConditionEvidence {C : CircleMethodPackage} (P : ParityConditionPackage P) where
  parityProblemClosed : P.parityProblem
  sieveUpperBoundClosed : P.sieveUpperBound
  buchstabFunctionClosed : P.buchstabFunction

def ParityConditionClosed {C : CircleMethodPackage} (P : ParityConditionPackage P) : Prop :=
  P.parityProblem ∧ P.sieveUpperBound ∧ P.buchstabFunction

theorem parity_condition_closed_from_evidence
    {C : CircleMethodPackage} (P : ParityConditionPackage P) (E : ParityConditionEvidence P) :
    ParityConditionClosed P := by
  exact And.intro E.parityProblemClosed (And.intro E.sieveUpperBoundClosed E.buchstabFunctionClosed)

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse
