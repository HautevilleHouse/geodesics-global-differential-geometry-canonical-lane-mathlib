import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure SyngeTheoremPackage (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  compactOrientedEvenDim : Prop
  positiveCurvature : Prop
  simplyConnected : Prop
  sphereConclusion : Prop

structure SyngeTheoremEvidence {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (S : SyngeTheoremPackage M) where
  compactOrientedEvenDimClosed : S.compactOrientedEvenDim
  positiveCurvatureClosed : S.positiveCurvature
  simplyConnectedClosed : S.simplyConnected
  sphereConclusionClosed : S.sphereConclusion

def SyngeTheoremClosed {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (S : SyngeTheoremPackage M) : Prop :=
  S.compactOrientedEvenDim ∧ S.positiveCurvature ∧ S.simplyConnected ∧ S.sphereConclusion

theorem synge_theorem_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (S : SyngeTheoremPackage M) (E : SyngeTheoremEvidence S) :
    SyngeTheoremClosed S := by
  exact And.intro E.compactOrientedEvenDimClosed
    (And.intro E.positiveCurvatureClosed
      (And.intro E.simplyConnectedClosed E.sphereConclusionClosed))

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse