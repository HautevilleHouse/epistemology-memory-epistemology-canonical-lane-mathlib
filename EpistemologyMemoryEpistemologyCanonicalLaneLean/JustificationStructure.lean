import EpistemologyMemoryEpistemologyCanonicalLaneLean.MemoryRetrieval

namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

structure JustificationStructurePackage where
  baseBeliefs : Type u
  inferenceRules : Type v
  coherenceCondition : Prop
  closureUnderInference : Prop

structure JustificationStructureEvidence (J : JustificationStructurePackage) where
  coherenceConditionClosed : J.coherenceCondition
  closureUnderInferenceClosed : J.closureUnderInference

def JustificationStructureClosed (J : JustificationStructurePackage) : Prop :=
  J.coherenceCondition ∧ J.closureUnderInference

theorem justification_structure_closed_from_evidence (J : JustificationStructurePackage) (E : JustificationStructureEvidence J) : JustificationStructureClosed J :=
  And.intro E.coherenceConditionClosed E.closureUnderInferenceClosed

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse