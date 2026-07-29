import EpistemologyMemoryEpistemologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

structure MemoryRetrievalPackage where
  cueSet : List String
  retrievalFunction : Prop
  cueSensitivityGuarantee : Prop
  retrievalFunctionClosed : retrievalFunction
  cueSensitivityGuaranteeClosed : cueSensitivityGuarantee

structure MemoryRetrievalEvidence (R : MemoryRetrievalPackage) where
  retrievalFunctionClosed : R.retrievalFunction
  cueSensitivityGuaranteeClosed : R.cueSensitivityGuarantee

def MemoryRetrievalClosed (R : MemoryRetrievalPackage) : Prop :=
  R.retrievalFunction ∧ R.cueSensitivityGuarantee

theorem memory_retrieval_closed_from_evidence (R : MemoryRetrievalPackage)
    (E : MemoryRetrievalEvidence R) : MemoryRetrievalClosed R := by
  exact And.intro E.retrievalFunctionClosed E.cueSensitivityGuaranteeClosed

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse