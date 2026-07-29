import canonicalLaneMathlib.AdmissibleClass
import EpistemologyMemoryEpistemologyCanonicalLaneLean.MemoryBeliefStructure

namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

structure JustificationFlow (M : MemoryBeliefPackage) where
  timeParameter : Type u
  justificationState : timeParameter → M.agent → M.proposition → Prop
  initialJustification : Prop
  dynamicJustification : Prop
  conservationOfJustification : Prop

structure JustificationFlowEvidence {M : MemoryBeliefPackage}
    (J : JustificationFlow M) where
  initialJustificationClosed : J.initialJustification
  dynamicJustificationClosed : J.dynamicJustification
  conservationOfJustificationClosed : J.conservationOfJustification

def JustificationFlowClosed {M : MemoryBeliefPackage}
    (J : JustificationFlow M) : Prop :=
  J.initialJustification ∧ J.dynamicJustification ∧ J.conservationOfJustification

theorem justification_flow_closed_from_evidence
    {M : MemoryBeliefPackage} (J : JustificationFlow M)
    (E : JustificationFlowEvidence J) : JustificationFlowClosed J := by
  exact And.intro E.initialJustificationClosed
    (And.intro E.dynamicJustificationClosed E.conservationOfJustificationClosed)

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse