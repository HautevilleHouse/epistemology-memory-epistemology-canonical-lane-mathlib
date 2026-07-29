import canonicalLaneMathlib.AdmissibleClass
import EpistemologyMemoryEpistemologyCanonicalLaneLean.JustificationFlow

namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

structure EpistemicCoherence (M : MemoryBeliefPackage) (J : JustificationFlow M) where
  coherenceMeasure : Type u
  globalCoherence : Prop
  localCoherence : M.agent → M.proposition → Prop
  coherenceMonotonicity : Prop

structure EpistemicCoherenceEvidence {M : MemoryBeliefPackage}
    {J : JustificationFlow M} (C : EpistemicCoherence M J) where
  globalCoherenceClosed : C.globalCoherence
  localCoherenceClosed : ∀ a p, C.localCoherence a p
  coherenceMonotonicityClosed : C.coherenceMonotonicity

def EpistemicCoherenceClosed {M : MemoryBeliefPackage}
    {J : JustificationFlow M} (C : EpistemicCoherence M J) : Prop :=
  C.globalCoherence ∧ (∀ a p, C.localCoherence a p) ∧ C.coherenceMonotonicity

theorem epistemic_coherence_closed_from_evidence
    {M : MemoryBeliefPackage} {J : JustificationFlow M}
    (C : EpistemicCoherence M J) (E : EpistemicCoherenceEvidence C) :
    EpistemicCoherenceClosed C := by
  exact And.intro E.globalCoherenceClosed
    (And.intro E.localCoherenceClosed E.coherenceMonotonicityClosed)

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse