import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure JacobiFieldPackage (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  jacobiEquation : Prop
  conjugatePointsDefined : Prop
  indexForm : Prop
  comparisonTheorems : Prop

structure JacobiFieldEvidence {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (J : JacobiFieldPackage M) where
  jacobiEquationClosed : J.jacobiEquation
  conjugatePointsDefinedClosed : J.conjugatePointsDefined
  indexFormClosed : J.indexForm
  comparisonTheoremsClosed : J.comparisonTheorems

def JacobiFieldClosed {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (J : JacobiFieldPackage M) : Prop :=
  J.jacobiEquation ∧ J.conjugatePointsDefined ∧ J.indexForm ∧ J.comparisonTheorems

theorem jacobi_field_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (J : JacobiFieldPackage M) (E : JacobiFieldEvidence J) :
    JacobiFieldClosed J := by
  exact And.intro E.jacobiEquationClosed
    (And.intro E.conjugatePointsDefinedClosed
      (And.intro E.indexFormClosed E.comparisonTheoremsClosed))

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse