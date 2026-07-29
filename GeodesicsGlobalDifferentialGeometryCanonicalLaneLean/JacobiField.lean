import canonicalLaneMathlib.AdmissibleClass
import GeodesicsGlobalDifferentialGeometryCanonicalLaneLean.GeodesicBundle

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure JacobiField (G : GeodesicBundle) where
  geodesicVar : Type u
  jacobiEquation : Prop
  orthogonalDecomposition : Prop
  conjugatePointsDetected : Prop
  curvatureEffect : Prop
  jacobiEquationClosed : jacobiEquation
  conjugatePointsDetectedClosed : conjugatePointsDetected

def JacobiFieldClosed (G : GeodesicBundle) (J : JacobiField G) : Prop :=
  J.jacobiEquation ∧ J.conjugatePointsDetected

theorem jacobi_field_closed_from_evidence (G : GeodesicBundle) (J : JacobiField G) :
    JacobiFieldClosed G J := by
  exact And.intro J.jacobiEquationClosed J.conjugatePointsDetectedClosed

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse