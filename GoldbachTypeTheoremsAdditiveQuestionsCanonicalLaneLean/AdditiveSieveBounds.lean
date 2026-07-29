import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure AdditiveSievePackage (A : AdmissibleClass) where
  sieveUpperBound : Prop
  parityCorrection : Prop
  bilinearSumEstimated : Prop
  ternaryExclusionCovered : Prop

structure AdditiveSieveEvidence {A : AdmissibleClass} (S : AdditiveSievePackage A) where
  sieveUpperBoundClosed : S.sieveUpperBound
  parityCorrectionClosed : S.parityCorrection
  bilinearSumEstimatedClosed : S.bilinearSumEstimated
  ternaryExclusionCoveredClosed : S.ternaryExclusionCovered

def AdditiveSieveClosed {A : AdmissibleClass} (S : AdditiveSievePackage A) : Prop :=
  S.sieveUpperBound ∧ S.parityCorrection ∧ S.bilinearSumEstimated ∧ S.ternaryExclusionCovered

theorem additive_sieve_closed_from_evidence {A : AdmissibleClass} (S : AdditiveSievePackage A) (E : AdditiveSieveEvidence S) : AdditiveSieveClosed S := by
  exact And.intro E.sieveUpperBoundClosed (And.intro E.parityCorrectionClosed (And.intro E.bilinearSumEstimatedClosed E.ternaryExclusionCoveredClosed))

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse