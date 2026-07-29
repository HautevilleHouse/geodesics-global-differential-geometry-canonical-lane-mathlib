import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure JacobiFieldPackage where
  jacobiField : Type u
  geodesicVariation : Prop
  jacobiEquation : Prop
  conjugatePointsDefined : Prop
  variationTerm : geodesicVariation
  equationTerm : jacobiEquation
  conjugateTerm : conjugatePointsDefined

structure JacobiFieldEvidence (J : JacobiFieldPackage) where
  geodesicVariationClosed : J.geodesicVariation
  jacobiEquationClosed : J.jacobiEquation
  conjugatePointsDefinedClosed : J.conjugatePointsDefined

def JacobiFieldClosed (J : JacobiFieldPackage) : Prop :=
  J.geodesicVariation ∧ J.jacobiEquation ∧ J.conjugatePointsDefined

theorem jacobi_field_closed_from_evidence (J : JacobiFieldPackage)
    (E : JacobiFieldEvidence J) : JacobiFieldClosed J := by
  exact And.intro E.geodesicVariationClosed
    (And.intro E.jacobiEquationClosed E.conjugatePointsDefinedClosed)

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse