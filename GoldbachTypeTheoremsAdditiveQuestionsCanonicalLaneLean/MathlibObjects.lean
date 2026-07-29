import GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GoldbachSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GoldbachAdmittedObject where
  space : GoldbachSpace
  evenInteger : ℕ
  sumOfTwoPrimes : Prop
  primeModel : Type
  primeTopology : TopologicalSpace primeModel
  representationValid : Prop
  conclusion : representationValid

structure GoldbachEndgameState where
  object : GoldbachAdmittedObject

def GoldbachWitnessClosed (O : GoldbachAdmittedObject) : Prop :=
  O.representationValid

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse
