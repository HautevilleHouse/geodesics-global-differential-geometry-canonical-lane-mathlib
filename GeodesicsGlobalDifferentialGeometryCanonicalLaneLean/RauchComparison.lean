import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure RauchComparisonPackage where
  manifold : Type u
  metric : Type v
  curvatureBounds : ℝ × ℝ
  jacobiFieldEstimates : Prop
  comparisonTheorem : Prop

structure RauchComparisonEvidence (R : RauchComparisonPackage) where
  jacobiFieldEstimatesClosed : R.jacobiFieldEstimates
  comparisonTheoremClosed : R.comparisonTheorem

def RauchComparisonClosed (R : RauchComparisonPackage) : Prop :=
  R.jacobiFieldEstimates ∧ R.comparisonTheorem

theorem rauch_comparison_closed_from_evidence (R : RauchComparisonPackage)
    (E : RauchComparisonEvidence R) : RauchComparisonClosed R := by
  exact And.intro E.jacobiFieldEstimatesClosed E.comparisonTheoremClosed

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse