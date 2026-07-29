import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

structure AdmissibleMemoryObject where
  source : Type u
  retrieval : source → Prop
  justification : Prop
  conclusion : justification

structure AdmissibleClass where
  object : AdmissibleMemoryObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AdmissibleMemoryClosure A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse