import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure GeodesicFlowPackage (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  tangentBundle : Type v
  metric : TangentBundle M → TangentBundle M → ℝ
  geodesicEquation : Prop
  exponentialMapDefined : Prop
  completeness : Prop

structure GeodesicFlowEvidence {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (G : GeodesicFlowPackage M) where
  geodesicEquationClosed : G.geodesicEquation
  exponentialMapDefinedClosed : G.exponentialMapDefined
  completenessClosed : G.completeness

def GeodesicFlowClosed {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (G : GeodesicFlowPackage M) : Prop :=
  G.geodesicEquation ∧ G.exponentialMapDefined ∧ G.completeness

theorem geodesic_flow_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (G : GeodesicFlowPackage M) (E : GeodesicFlowEvidence G) :
    GeodesicFlowClosed G := by
  exact And.intro E.geodesicEquationClosed
    (And.intro E.exponentialMapDefinedClosed E.completenessClosed)

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse