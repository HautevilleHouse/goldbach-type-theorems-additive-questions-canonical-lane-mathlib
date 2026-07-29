import GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean.DensityEstimates

/-!
# Exponential Sums Package
-/

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure ExponentialSumsPackage {D : DensityEstimatesPackage} where
  weylSum : Prop
  vaughanIdentity : Prop
  meanValueTheorem : Prop
  majorArcBound : Prop

structure ExponentialSumsEvidence {D : DensityEstimatesPackage} (E : ExponentialSumsPackage E) where
  weylSumClosed : E.weylSum
  vaughanIdentityClosed : E.vaughanIdentity
  meanValueTheoremClosed : E.meanValueTheorem
  majorArcBoundClosed : E.majorArcBound

def ExponentialSumsClosed {D : DensityEstimatesPackage} (E : ExponentialSumsPackage E) : Prop :=
  E.weylSum ∧ E.vaughanIdentity ∧ E.meanValueTheorem ∧ E.majorArcBound

theorem exponential_sums_closed_from_evidence
    {D : DensityEstimatesPackage} (E : ExponentialSumsPackage E) (Ev : ExponentialSumsEvidence E) :
    ExponentialSumsClosed E := by
  exact And.intro Ev.weylSumClosed (And.intro Ev.vaughanIdentityClosed (And.intro Ev.meanValueTheoremClosed Ev.majorArcBoundClosed))

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse
