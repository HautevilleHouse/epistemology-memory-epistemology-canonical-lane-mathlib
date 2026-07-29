import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

structure MemoryTrace (M : MemoryEpistemicState) where
  timeDomain : Type u
  trace : timeDomain → M.memoryContent
  persistenceCondition : Prop
  updateConsistency : Prop

structure MemoryTraceEvidence {M : MemoryEpistemicState} (T : MemoryTrace M) where
  persistenceConditionClosed : T.persistenceCondition
  updateConsistencyClosed : T.updateConsistency

def MemoryTraceClosed {M : MemoryEpistemicState} (T : MemoryTrace M) : Prop :=
  T.persistenceCondition ∧ T.updateConsistency

theorem memory_trace_closed_from_evidence {M : MemoryEpistemicState} (T : MemoryTrace M) (E : MemoryTraceEvidence T) : MemoryTraceClosed T :=
  And.intro E.persistenceConditionClosed E.updateConsistencyClosed

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse