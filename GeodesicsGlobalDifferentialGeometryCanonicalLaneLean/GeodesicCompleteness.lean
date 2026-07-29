import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure GeodesicCompletenessPackage {G : GeodesicEquationPackage} {E : ExponentialMapPackage G} {J : JacobiFieldPackage G E} {C : ComparisonTheoremPackage G E J} where
  completeRiemannianManifold : Prop
  geodesicCompletenessEquivalent : Prop
  hopfRinowTheorem : Prop
  metricCompleteness : Prop
  geodesicConnectedness : Prop

structure GeodesicCompletenessEvidence {G : GeodesicEquationPackage} {E : ExponentialMapPackage G} {J : JacobiFieldPackage G E} {C : ComparisonTheoremPackage G E J} (GC : GeodesicCompletenessPackage G E J C) where
  completeRiemannianManifoldClosed : GC.completeRiemannianManifold
  geodesicCompletenessEquivalentClosed : GC.geodesicCompletenessEquivalent
  hopfRinowTheoremClosed : GC.hopfRinowTheorem
  metricCompletenessClosed : GC.metricCompleteness
  geodesicConnectednessClosed : GC.geodesicConnectedness

def GeodesicCompletenessClosed {G : GeodesicEquationPackage} {E : ExponentialMapPackage G} {J : JacobiFieldPackage G E} {C : ComparisonTheoremPackage G E J} (GC : GeodesicCompletenessPackage G E J C) : Prop :=
  GC.completeRiemannianManifold ∧ GC.geodesicCompletenessEquivalent ∧ GC.hopfRinowTheorem ∧ GC.metricCompleteness ∧ GC.geodesicConnectedness

theorem geodesic_completeness_closed_from_evidence {G : GeodesicEquationPackage} {E : ExponentialMapPackage G} {J : JacobiFieldPackage G E} {C : ComparisonTheoremPackage G E J} (GC : GeodesicCompletenessPackage G E J C) (Ev : GeodesicCompletenessEvidence GC) :
    GeodesicCompletenessClosed GC := by
  exact And.intro Ev.completeRiemannianManifoldClosed (And.intro Ev.geodesicCompletenessEquivalentClosed (And.intro Ev.hopfRinowTheoremClosed (And.intro Ev.metricCompletenessClosed Ev.geodesicConnectednessClosed)))

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse