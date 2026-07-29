import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure BonnetMyersPackage where
  manifold : Type u
  metric : Type v
  ricciLowerBound : ℝ
  diameterBound : ℝ
  closedManifold : Prop
  bonnetMyersConclusion : Prop

structure BonnetMyersEvidence (B : BonnetMyersPackage) where
  closedManifoldClosed : B.closedManifold
  bonnetMyersConclusionClosed : B.bonnetMyersConclusion

def BonnetMyersClosed (B : BonnetMyersPackage) : Prop :=
  B.closedManifold ∧ B.bonnetMyersConclusion

theorem bonnet_myers_closed_from_evidence (B : BonnetMyersPackage)
    (E : BonnetMyersEvidence B) : BonnetMyersClosed B := by
  exact And.intro E.closedManifoldClosed E.bonnetMyersConclusionClosed

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse