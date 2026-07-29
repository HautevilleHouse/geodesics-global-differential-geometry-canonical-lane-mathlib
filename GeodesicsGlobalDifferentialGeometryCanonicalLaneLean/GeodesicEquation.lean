import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure GeodesicEquationPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Type v
  metric : Type w
  connection : Type x
  geodesicSpray : Type y
  equationDefined : Prop
  initialConditionSpace : Prop
  uniqueness : Prop

structure GeodesicEquationEvidence (G : GeodesicEquationPackage) where
  equationDefinedClosed : G.equationDefined
  initialConditionSpaceClosed : G.initialConditionSpace
  uniquenessClosed : G.uniqueness

def GeodesicEquationClosed (G : GeodesicEquationPackage) : Prop :=
  G.equationDefined ∧ G.initialConditionSpace ∧ G.uniqueness

theorem geodesic_equation_closed_from_evidence (G : GeodesicEquationPackage) (E : GeodesicEquationEvidence G) :
    GeodesicEquationClosed G := by
  exact And.intro E.equationDefinedClosed (And.intro E.initialConditionSpaceClosed E.uniquenessClosed)

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse