namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

structure MemoryKnowledgePackage (R : MemoryReliabilityPackage) where
  trueBelief : Prop
  justificationFromReliability : R.sourceTrackRecord → R.sourceCompetence → R.environmentNormal → trueBelief
  knowledgeAttained : Prop
  justificationEnsuresKnowledge : trueBelief → knowledgeAttained

def MemoryKnowledgeClosed (R : MemoryReliabilityPackage) (K : MemoryKnowledgePackage R) : Prop :=
  K.trueBelief ∧ K.knowledgeAttained

structure MemoryKnowledgeEvidence (R : MemoryReliabilityPackage) (K : MemoryKnowledgePackage R) where
  trueBeliefClosed : K.trueBelief
  knowledgeAttainedClosed : K.knowledgeAttained

theorem memory_knowledge_closed_from_evidence
    (R : MemoryReliabilityPackage) (K : MemoryKnowledgePackage R)
    (E : MemoryKnowledgeEvidence R K) : MemoryKnowledgeClosed R K := by
  exact And.intro E.trueBeliefClosed E.knowledgeAttainedClosed

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse
