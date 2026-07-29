import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

structure MemoryBeliefPackage where
  agent : Type u
  proposition : Type v
  beliefState : Type w
  memoryTrace : agent → proposition → beliefState
  memoryReliability : agent → Prop
  beliefJustified : agent → proposition → Prop

structure MemoryBeliefEvidence (M : MemoryBeliefPackage) where
  memoryReliabilityClosed : M.memoryReliability
  beliefJustifiedClosed : ∀ a p, M.beliefJustified a p

def MemoryBeliefClosed (M : MemoryBeliefPackage) : Prop :=
  M.memoryReliability ∧ ∀ a p, M.beliefJustified a p

theorem memory_belief_closed_from_evidence (M : MemoryBeliefPackage)
    (E : MemoryBeliefEvidence M) : MemoryBeliefClosed M := by
  exact And.intro E.memoryReliabilityClosed E.beliefJustifiedClosed

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse