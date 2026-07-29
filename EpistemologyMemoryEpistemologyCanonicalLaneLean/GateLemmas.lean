import canonicalLaneMathlib.GateLemmas
import EpistemologyMemoryEpistemologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse