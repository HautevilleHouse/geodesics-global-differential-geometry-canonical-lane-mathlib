import canonicalLaneMathlib.AdmissibleClass
import GeodesicsGlobalDifferentialGeometryCanonicalLaneLean.CutLocus

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure InjectivityRadius (L : CutLocus) where
  radius : ℝ
  exponentialInjective : Prop
  lowerBound : Prop
  curvatureDependence : Prop
  exponentialInjectiveClosed : exponentialInjective
  lowerBoundClosed : lowerBound
  curvatureDependenceClosed : curvatureDependence

def InjectivityRadiusClosed (L : CutLocus) (R : InjectivityRadius L) : Prop :=
  R.exponentialInjective ∧ R.lowerBound ∧ R.curvatureDependence

theorem injectivity_radius_closed_from_evidence (L : CutLocus) (R : InjectivityRadius L) :
    InjectivityRadiusClosed L R := by
  exact And.intro R.exponentialInjectiveClosed
    (And.intro R.lowerBoundClosed R.curvatureDependenceClosed)

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse