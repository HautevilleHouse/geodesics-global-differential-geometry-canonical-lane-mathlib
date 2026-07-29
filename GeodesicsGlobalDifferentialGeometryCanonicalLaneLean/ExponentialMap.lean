import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure ExponentialMapPackage {G : GeodesicEquationPackage} where
  exponentialMapDefined : Prop
  domainOpen : Prop
  smoothness : Prop
  radialGeodesicProperty : Prop
  normalNeighborhoodExists : Prop

structure ExponentialMapEvidence {G : GeodesicEquationPackage} (E : ExponentialMapPackage G) where
  exponentialMapDefinedClosed : E.exponentialMapDefined
  domainOpenClosed : E.domainOpen
  smoothnessClosed : E.smoothness
  radialGeodesicPropertyClosed : E.radialGeodesicProperty
  normalNeighborhoodExistsClosed : E.normalNeighborhoodExists

def ExponentialMapClosed {G : GeodesicEquationPackage} (E : ExponentialMapPackage G) : Prop :=
  E.exponentialMapDefined ∧ E.domainOpen ∧ E.smoothness ∧ E.radialGeodesicProperty ∧ E.normalNeighborhoodExists

theorem exponential_map_closed_from_evidence {G : GeodesicEquationPackage} (E : ExponentialMapPackage G) (Ev : ExponentialMapEvidence E) :
    ExponentialMapClosed E := by
  exact And.intro Ev.exponentialMapDefinedClosed (And.intro Ev.domainOpenClosed (And.intro Ev.smoothnessClosed (And.intro Ev.radialGeodesicPropertyClosed Ev.normalNeighborhoodExistsClosed)))

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse