import EpistemologyMemoryEpistemologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

structure MemoryEncodingPackage where
  initialTrace : String
  encodingProcess : Prop
  traceFidelityGuarantee : Prop
  encodingProcessClosed : encodingProcess
  traceFidelityGuaranteeClosed : traceFidelityGuarantee

structure MemoryEncodingEvidence (M : MemoryEncodingPackage) where
  encodingProcessClosed : M.encodingProcess
  traceFidelityGuaranteeClosed : M.traceFidelityGuarantee

def MemoryEncodingClosed (M : MemoryEncodingPackage) : Prop :=
  M.encodingProcess ∧ M.traceFidelityGuarantee

theorem memory_encoding_closed_from_evidence (M : MemoryEncodingPackage)
    (E : MemoryEncodingEvidence M) : MemoryEncodingClosed M := by
  exact And.intro E.encodingProcessClosed E.traceFidelityGuaranteeClosed

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse