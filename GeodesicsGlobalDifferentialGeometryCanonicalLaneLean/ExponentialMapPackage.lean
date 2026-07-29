import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure ExponentialMapPackage where
  tangentSpace : Type u
  exponentialMap : tangentSpace -> Point
  normalCoordinates : Prop
  gaussLemma : Prop
  exponentialMapDefined : Prop
  normalCoordinatesTerm : normalCoordinates
  gaussLemmaTerm : gaussLemma
  exponentialMapDefinedTerm : exponentialMapDefined

structure ExponentialMapEvidence (E : ExponentialMapPackage) where
  normalCoordinatesClosed : E.normalCoordinates
  gaussLemmaClosed : E.gaussLemma
  exponentialMapDefinedClosed : E.exponentialMapDefined

def ExponentialMapClosed (E : ExponentialMapPackage) : Prop :=
  E.normalCoordinates ∧ E.gaussLemma ∧ E.exponentialMapDefined

theorem exponential_map_closed_from_evidence (E : ExponentialMapPackage)
    (Ev : ExponentialMapEvidence E) : ExponentialMapClosed E := by
  exact And.intro Ev.normalCoordinatesClosed
    (And.intro Ev.gaussLemmaClosed Ev.exponentialMapDefinedClosed)

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse