import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

structure MemoryEpistemicState where
  memoryContent : Type u
  beliefSet : Type v
  justificationRelation : Type w
  coherenceCondition : Prop
  memoryReliability : Prop
  epistemicVirtue : Prop

structure MemoryEpistemicEvidence (M : MemoryEpistemicState) where
  coherenceConditionClosed : M.coherenceCondition
  memoryReliabilityClosed : M.memoryReliability
  epistemicVirtueClosed : M.epistemicVirtue

def MemoryEpistemicClosed (M : MemoryEpistemicState) : Prop :=
  M.coherenceCondition ∧ M.memoryReliability ∧ M.epistemicVirtue

theorem memory_epistemic_closed_from_evidence (M : MemoryEpistemicState) (E : MemoryEpistemicEvidence M) : MemoryEpistemicClosed M :=
  And.intro E.coherenceConditionClosed (And.intro E.memoryReliabilityClosed E.epistemicVirtueClosed)

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse