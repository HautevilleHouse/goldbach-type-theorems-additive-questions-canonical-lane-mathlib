import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure GoldbachSieveEstimate where
  n : ℕ
  lowerBound : ℕ
  upperBound : ℕ
  estimateValid : lowerBound ≤ upperBound
  countOfRepresentations : ℕ
  representationCountBounded : countOfRepresentations ≤ upperBound - lowerBound

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse