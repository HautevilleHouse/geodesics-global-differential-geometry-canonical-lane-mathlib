import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure ComparisonTheoremPackage {G : GeodesicEquationPackage} {E : ExponentialMapPackage G} {J : JacobiFieldPackage G E} where
  sectionalCurvatureBound : Prop
  rauchComparison : Prop
  hessianComparison : Prop
  laplacianComparison : Prop
  volumeComparison : Prop

structure ComparisonTheoremEvidence {G : GeodesicEquationPackage} {E : ExponentialMapPackage G} {J : JacobiFieldPackage G E} (C : ComparisonTheoremPackage G E J) where
  sectionalCurvatureBoundClosed : C.sectionalCurvatureBound
  rauchComparisonClosed : C.rauchComparison
  hessianComparisonClosed : C.hessianComparison
  laplacianComparisonClosed : C.laplacianComparison
  volumeComparisonClosed : C.volumeComparison

def ComparisonTheoremClosed {G : GeodesicEquationPackage} {E : ExponentialMapPackage G} {J : JacobiFieldPackage G E} (C : ComparisonTheoremPackage G E J) : Prop :=
  C.sectionalCurvatureBound ∧ C.rauchComparison ∧ C.hessianComparison ∧ C.laplacianComparison ∧ C.volumeComparison

theorem comparison_theorem_closed_from_evidence {G : GeodesicEquationPackage} {E : ExponentialMapPackage G} {J : JacobiFieldPackage G E} (C : ComparisonTheoremPackage G E J) (Ev : ComparisonTheoremEvidence C) :
    ComparisonTheoremClosed C := by
  exact And.intro Ev.sectionalCurvatureBoundClosed (And.intro Ev.rauchComparisonClosed (And.intro Ev.hessianComparisonClosed (And.intro Ev.laplacianComparisonClosed Ev.volumeComparisonClosed)))

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse