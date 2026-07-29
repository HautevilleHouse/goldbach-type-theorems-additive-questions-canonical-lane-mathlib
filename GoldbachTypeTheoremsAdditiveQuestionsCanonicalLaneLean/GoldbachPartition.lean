import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean

structure GoldbachPartition where
  evenNumber : ℕ
  p : ℕ
  q : ℕ
  primeP : Nat.Prime p
  primeQ : Nat.Prime q
  sum : p + q = evenNumber

end GoldbachTypeTheoremsAdditiveQuestionsCanonicalLaneLean
end HautevilleHouse