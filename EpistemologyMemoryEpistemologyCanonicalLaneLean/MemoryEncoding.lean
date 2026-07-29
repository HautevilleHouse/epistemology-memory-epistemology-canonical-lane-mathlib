import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyMemoryEpistemologyCanonicalLaneLean

structure MemoryEncodingPackage where
  encodingProcess : Type u
  memoryTrace : Type v
  encodingClock : Prop
  retrievalOffset : Prop

structure MemoryEncodingEvidence (E : MemoryEncodingPackage) where
  encodingClockClosed : E.encodingClock
  retrievalOffsetClosed : E.retrievalOffset

def MemoryEncodingClosed (E : MemoryEncodingPackage) : Prop :=
  E.encodingClock ∧ E.retrievalOffset

theorem memory_encoding_closed_from_evidence (E : MemoryEncodingPackage) (Ev : MemoryEncodingEvidence E) :
    MemoryEncodingClosed E := by
  exact And.intro Ev.encodingClockClosed Ev.retrievalOffsetClosed

end EpistemologyMemoryEpistemologyCanonicalLaneLean
end HautevilleHouse