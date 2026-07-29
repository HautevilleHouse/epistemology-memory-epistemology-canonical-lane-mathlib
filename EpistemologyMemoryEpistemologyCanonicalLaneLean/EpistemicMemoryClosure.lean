import EpistemologyMemoryEpistemologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

def ConstrainedMemoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_memory_endgame (A : AdmissibleClass) :
    ConstrainedMemoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse