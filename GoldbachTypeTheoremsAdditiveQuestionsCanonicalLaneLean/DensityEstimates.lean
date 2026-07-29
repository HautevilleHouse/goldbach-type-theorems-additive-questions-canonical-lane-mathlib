import GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean.LinnikTheorem

/-!
# Density Estimates Package
-/

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure DensityEstimatesPackage {L : LinnikTheoremPackage} where
  primeDensity : Prop
  zeroFreeRegion : Prop
  deuringHeilbronn : Prop

structure DensityEstimatesEvidence {L : LinnikTheoremPackage} (D : DensityEstimatesPackage D) where
  primeDensityClosed : D.primeDensity
  zeroFreeRegionClosed : D.zeroFreeRegion
  deuringHeilbronnClosed : D.deuringHeilbronn

def DensityEstimatesClosed {L : LinnikTheoremPackage} (D : DensityEstimatesPackage D) : Prop :=
  D.primeDensity ∧ D.zeroFreeRegion ∧ D.deuringHeilbronn

theorem density_estimates_closed_from_evidence
    {L : LinnikTheoremPackage} (D : DensityEstimatesPackage D) (E : DensityEstimatesEvidence D) :
    DensityEstimatesClosed D := by
  exact And.intro E.primeDensityClosed (And.intro E.zeroFreeRegionClosed E.deuringHeilbronnClosed)

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse
