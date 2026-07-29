import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure JacobiFieldPackage where
  manifold : Type u
  geodesic : Type v
  jacobiField : Type w
  jacobiEquation : Prop
  conjugatePoints : Prop

def JacobiFieldClosed (J : JacobiFieldPackage) : Prop :=
  J.jacobiEquation ∧ J.conjugatePoints

theorem jacobi_field_closed_from_evidence (J : JacobiFieldPackage)
    (jacobiEquationClosed : J.jacobiEquation) (conjugatePointsClosed : J.conjugatePoints) :
    JacobiFieldClosed J := by
  exact And.intro jacobiEquationClosed conjugatePointsClosed

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse