import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MemorySpace where
  carrier : Type
  content : carrier -> Prop

structure MemoryAdmittedObject where
  memorySpace : MemorySpace
  justified : Prop
  reliable : Prop
  knowledge : Prop
  conclusion : justified ∧ reliable ∧ knowledge

structure MemoryEndgameState where
  object : MemoryAdmittedObject

def MemoryWitnessClosed (O : MemoryAdmittedObject) : Prop :=
  O.conclusion

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse
