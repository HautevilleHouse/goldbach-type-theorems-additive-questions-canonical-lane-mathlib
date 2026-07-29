import GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def goldbachProjection : Projection GoldbachEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem goldbach_projection_idempotent (x : GoldbachEndgameState) :
    goldbachProjection.toFun (goldbachProjection.toFun x) = goldbachProjection.toFun x := by
  exact goldbachProjection.idempotent x

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse