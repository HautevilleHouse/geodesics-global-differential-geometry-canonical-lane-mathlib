import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure CurvatureAndGeodesicsPackage where
  curvatureTensor : Type u
  sectionalCurvature : Type v
  ricciCurvature : Type w
  geodesicDeviationEquation : Prop
  curvatureTensorTerm : curvatureTensor
  sectionalTerm : sectionalCurvature
  ricciTerm : ricciCurvature
  deviationTerm : geodesicDeviationEquation

structure CurvatureAndGeodesicsEvidence (C : CurvatureAndGeodesicsPackage) where
  curvatureTensorClosed : C.curvatureTensor
  sectionalCurvatureClosed : C.sectionalCurvature
  ricciCurvatureClosed : C.ricciCurvature
  geodesicDeviationEquationClosed : C.geodesicDeviationEquation

def CurvatureAndGeodesicsClosed (C : CurvatureAndGeodesicsPackage) : Prop :=
  C.curvatureTensor ∧ C.sectionalCurvature ∧ C.ricciCurvature ∧ C.geodesicDeviationEquation

theorem curvature_and_geodesics_closed_from_evidence
    (C : CurvatureAndGeodesicsPackage) (E : CurvatureAndGeodesicsEvidence C) :
    CurvatureAndGeodesicsClosed C := by
  exact And.intro E.curvatureTensorClosed
    (And.intro E.sectionalCurvatureClosed
      (And.intro E.ricciCurvatureClosed E.geodesicDeviationEquationClosed))

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse