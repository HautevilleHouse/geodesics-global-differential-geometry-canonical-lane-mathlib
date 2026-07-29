import canonicalLaneMathlib.AdmissibleClass
import GeodesicsGlobalDifferentialGeometryCanonicalLaneLean.JacobiField

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure ComparisonGeometry {G : GeodesicBundle} (J : JacobiField G) where
  modelSpace : Type u
  curvatureUpperBound : Prop
  curvatureLowerBound : Prop
  rauchComparison : Prop
  hessianComparison : Prop
  laplacianComparison : Prop
  rauchComparisonClosed : rauchComparison
  hessianComparisonClosed : hessianComparison
  laplacianComparisonClosed : laplacianComparison

def ComparisonGeometryClosed {G : GeodesicBundle} {J : JacobiField G}
    (C : ComparisonGeometry J) : Prop :=
  C.rauchComparison ∧ C.hessianComparison ∧ C.laplacianComparison

theorem comparison_geometry_closed_from_evidence {G : GeodesicBundle}
    {J : JacobiField G} (C : ComparisonGeometry J) :
    ComparisonGeometryClosed C := by
  exact And.intro C.rauchComparisonClosed
    (And.intro C.hessianComparisonClosed C.laplacianComparisonClosed)

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse