namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

structure EpistemicJustificationPackage where
  internalistCondition : Prop
  externalistCondition : Prop
  coherenceCondition : Prop

def EpistemicJustificationPackageClosed (J : EpistemicJustificationPackage) : Prop :=
  J.internalistCondition ∧ J.externalistCondition ∧ J.coherenceCondition

structure EpistemicJustificationEvidence (J : EpistemicJustificationPackage) where
  internalistConditionClosed : J.internalistCondition
  externalistConditionClosed : J.externalistCondition
  coherenceConditionClosed : J.coherenceCondition

theorem epistemic_justification_closed_from_evidence
    (J : EpistemicJustificationPackage) (E : EpistemicJustificationEvidence J) :
    EpistemicJustificationPackageClosed J := by
  exact And.intro E.internalistConditionClosed
    (And.intro E.externalistConditionClosed E.coherenceConditionClosed)

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse
