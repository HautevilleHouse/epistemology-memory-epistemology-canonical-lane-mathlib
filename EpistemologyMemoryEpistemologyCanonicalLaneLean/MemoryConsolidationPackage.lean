import EpistemologyMemoryEpistemologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

structure MemoryConsolidationPackage where
  consolidationProcess : Prop
  stabilityBound : Prop
  tracePreservation : Prop
  consolidationProcessClosed : consolidationProcess
  stabilityBoundClosed : stabilityBound
  tracePreservationClosed : tracePreservation

structure MemoryConsolidationEvidence (C : MemoryConsolidationPackage) where
  consolidationProcessClosed : C.consolidationProcess
  stabilityBoundClosed : C.stabilityBound
  tracePreservationClosed : C.tracePreservation

def MemoryConsolidationClosed (C : MemoryConsolidationPackage) : Prop :=
  C.consolidationProcess ∧ C.stabilityBound ∧ C.tracePreservation

theorem memory_consolidation_closed_from_evidence
    (C : MemoryConsolidationPackage) (E : MemoryConsolidationEvidence C) :
    MemoryConsolidationClosed C := by
  exact And.intro E.consolidationProcessClosed
    (And.intro E.stabilityBoundClosed E.tracePreservationClosed)

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse