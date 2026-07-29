import canonicalLaneMathlib.AdmissibleClass
import EpistemologyMemoryAdmissibleClass

namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MemoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse
