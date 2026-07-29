import canonicalLaneMathlib.AdmissibleClass
import EpistemologyMemoryEpistemologyCanonicalLaneLean.EpistemicCoherence

namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

structure JustificationTransfer (M : MemoryBeliefPackage) (J : JustificationFlow M)
    (C : EpistemicCoherence M J) where
  transferMechanism : Type u
  preservationAcrossTime : Prop
  environmentReliability : Prop
  closureUnderDeduction : Prop

structure JustificationTransferEvidence {M : MemoryBeliefPackage}
    {J : JustificationFlow M} {C : EpistemicCoherence M J}
    (T : JustificationTransfer M J C) where
  preservationAcrossTimeClosed : T.preservationAcrossTime
  environmentReliabilityClosed : T.environmentReliability
  closureUnderDeductionClosed : T.closureUnderDeduction

def JustificationTransferClosed {M : MemoryBeliefPackage}
    {J : JustificationFlow M} {C : EpistemicCoherence M J}
    (T : JustificationTransfer M J C) : Prop :=
  T.preservationAcrossTime ∧ T.environmentReliability ∧ T.closureUnderDeduction

theorem justification_transfer_closed_from_evidence
    {M : MemoryBeliefPackage} {J : JustificationFlow M}
    {C : EpistemicCoherence M J} (T : JustificationTransfer M J C)
    (E : JustificationTransferEvidence T) : JustificationTransferClosed T := by
  exact And.intro E.preservationAcrossTimeClosed
    (And.intro E.environmentReliabilityClosed E.closureUnderDeductionClosed)

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse