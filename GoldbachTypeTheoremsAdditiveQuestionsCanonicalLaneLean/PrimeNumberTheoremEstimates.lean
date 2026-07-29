import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure PrimeNumberTheoremPackage (A : AdmissibleClass) where
  asymptoticLaw : Prop
  errorTermBound : Prop
  zeroFreeRegion : Prop
  explicitBound : Prop

structure PrimeNumberTheoremEvidence {A : AdmissibleClass} (P : PrimeNumberTheoremPackage A) where
  asymptoticLawClosed : P.asymptoticLaw
  errorTermBoundClosed : P.errorTermBound
  zeroFreeRegionClosed : P.zeroFreeRegion
  explicitBoundClosed : P.explicitBound

def PrimeNumberTheoremClosed {A : AdmissibleClass} (P : PrimeNumberTheoremPackage A) : Prop :=
  P.asymptoticLaw ∧ P.errorTermBound ∧ P.zeroFreeRegion ∧ P.explicitBound

theorem prime_number_theorem_closed_from_evidence {A : AdmissibleClass} (P : PrimeNumberTheoremPackage A) (E : PrimeNumberTheoremEvidence P) : PrimeNumberTheoremClosed P := by
  exact And.intro E.asymptoticLawClosed (And.intro E.errorTermBoundClosed (And.intro E.zeroFreeRegionClosed E.explicitBoundClosed))

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse