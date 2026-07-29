import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure GeodesicFlowPackage where
  flowDomain : Type u
  vectorField : Type v
  flowMap : flowDomain -> ℝ -> flowDomain
  geodesicEquation : Prop
  completeFlow : Prop
  geodesicEquationTerm : geodesicEquation
  completeFlowTerm : completeFlow

structure GeodesicFlowEvidence (P : GeodesicFlowPackage) where
  geodesicEquationClosed : P.geodesicEquation
  completeFlowClosed : P.completeFlow

def GeodesicFlowClosed (P : GeodesicFlowPackage) : Prop :=
  P.geodesicEquation ∧ P.completeFlow

theorem geodesic_flow_closed_from_evidence (P : GeodesicFlowPackage)
    (E : GeodesicFlowEvidence P) : GeodesicFlowClosed P := by
  exact And.intro E.geodesicEquationClosed E.completeFlowClosed

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse