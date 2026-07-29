namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

structure MemoryReliabilityPackage where
  sourceTrackRecord : Prop
  sourceCompetence : Prop
  environmentNormal : Prop

def MemoryReliabilityClosed (R : MemoryReliabilityPackage) : Prop :=
  R.sourceTrackRecord ∧ R.sourceCompetence ∧ R.environmentNormal

structure MemoryReliabilityEvidence (R : MemoryReliabilityPackage) where
  sourceTrackRecordClosed : R.sourceTrackRecord
  sourceCompetenceClosed : R.sourceCompetence
  environmentNormalClosed : R.environmentNormal

theorem memory_reliability_closed_from_evidence
    (R : MemoryReliabilityPackage) (E : MemoryReliabilityEvidence R) :
    MemoryReliabilityClosed R := by
  exact And.intro E.sourceTrackRecordClosed
    (And.intro E.sourceCompetenceClosed E.environmentNormalClosed)

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse
