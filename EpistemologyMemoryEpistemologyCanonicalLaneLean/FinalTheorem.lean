import canonicalLaneMathlib.AdmissibleClass
import BridgeLemmas

namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

def ConstrainedEpistemologyMemoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_epistemology_memory_endgame (A : AdmissibleClass) :
    ConstrainedEpistemologyMemoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse
