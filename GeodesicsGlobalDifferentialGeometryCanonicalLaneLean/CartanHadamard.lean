import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure CartanHadamardPackage (M : Type u) [TopologicalSpace M] [SmoothManifold M] where
  completeSimplyConnected : Prop
  nonPositiveCurvature : Prop
  diffeomorphicToRn : Prop
  exponentialGlobalHomeo : Prop

structure CartanHadamardEvidence {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (C : CartanHadamardPackage M) where
  completeSimplyConnectedClosed : C.completeSimplyConnected
  nonPositiveCurvatureClosed : C.nonPositiveCurvature
  diffeomorphicToRnClosed : C.diffeomorphicToRn
  exponentialGlobalHomeoClosed : C.exponentialGlobalHomeo

def CartanHadamardClosed {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (C : CartanHadamardPackage M) : Prop :=
  C.completeSimplyConnected ∧ C.nonPositiveCurvature ∧
  C.diffeomorphicToRn ∧ C.exponentialGlobalHomeo

theorem cartan_hadamard_closed_from_evidence
    {M : Type u} [TopologicalSpace M] [SmoothManifold M]
    (C : CartanHadamardPackage M) (E : CartanHadamardEvidence C) :
    CartanHadamardClosed C := by
  exact And.intro E.completeSimplyConnectedClosed
    (And.intro E.nonPositiveCurvatureClosed
      (And.intro E.diffeomorphicToRnClosed E.exponentialGlobalHomeoClosed))

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse