import canonicalLaneMathlib.AdmissibleClass
import EpistemologyMemoryEpistemologyCanonicalLaneLean.JustificationTransfer

namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

structure InternalismExternalism (M : MemoryBeliefPackage) (J : JustificationFlow M)
    (C : EpistemicCoherence M J) (T : JustificationTransfer M J C) where
  internalSource : Type u
  externalSource : Type v
  internalJustification : M.agent → M.proposition → Prop
  externalJustification : M.agent → M.proposition → Prop
  sourceClassification : Prop

structure InternalismExternalismEvidence {M : MemoryBeliefPackage}
    {J : JustificationFlow M} {C : EpistemicCoherence M J}
    {T : JustificationTransfer M J C} (S : InternalismExternalism M J C T) where
  internalJustificationClosed : ∀ a p, S.internalJustification a p
  externalJustificationClosed : ∀ a p, S.externalJustification a p
  sourceClassificationClosed : S.sourceClassification

def InternalismExternalismClosed {M : MemoryBeliefPackage}
    {J : JustificationFlow M} {C : EpistemicCoherence M J}
    {T : JustificationTransfer M J C} (S : InternalismExternalism M J C T) : Prop :=
  (∀ a p, S.internalJustification a p) ∧ (∀ a p, S.externalJustification a p) ∧ S.sourceClassification

theorem internalism_externalism_closed_from_evidence
    {M : MemoryBeliefPackage} {J : JustificationFlow M}
    {C : EpistemicCoherence M J} {T : JustificationTransfer M J C}
    (S : InternalismExternalism M J C T)
    (E : InternalismExternalismEvidence S) : InternalismExternalismClosed S := by
  exact And.intro E.internalJustificationClosed
    (And.intro E.externalJustificationClosed E.sourceClassificationClosed)

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse