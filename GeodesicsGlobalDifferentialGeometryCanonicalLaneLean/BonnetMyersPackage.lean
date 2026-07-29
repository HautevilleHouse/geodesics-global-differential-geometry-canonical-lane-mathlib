import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure BonnetMyersPackage where
  ricciLowerBound : ℝ
  diameterBound : ℝ
  fundamentalGroupFiniteness : Prop
  ricciBoundTerm : ricciLowerBound > 0
  diameterBoundTerm : diameterBound ≤ π / Real.sqrt ricciLowerBound
  fundamentalGroupTerm : fundamentalGroupFiniteness

structure BonnetMyersEvidence (B : BonnetMyersPackage) where
  ricciBoundClosed : B.ricciLowerBound > 0
  diameterBoundClosed : B.diameterBound ≤ π / Real.sqrt B.ricciLowerBound
  fundamentalGroupFinitenessClosed : B.fundamentalGroupFiniteness

def BonnetMyersClosed (B : BonnetMyersPackage) : Prop :=
  B.ricciLowerBound > 0 ∧ B.diameterBound ≤ π / Real.sqrt B.ricciLowerBound ∧ B.fundamentalGroupFiniteness

theorem bonnet_myers_closed_from_evidence (B : BonnetMyersPackage)
    (E : BonnetMyersEvidence B) : BonnetMyersClosed B := by
  exact And.intro E.ricciBoundClosed
    (And.intro E.diameterBoundClosed E.fundamentalGroupFinitenessClosed)

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse