import canonicalLaneMathlib.AdmissibleClass
import GeodesicsGlobalDifferentialGeometryCanonicalLaneLean.ComparisonGeometry

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure CutLocus (C : ComparisonGeometry) where
  cutLocusSet : Type u
  conjugateLocusInclusion : Prop
  metricStructure : Prop
  differentiability : Prop
  conjugateLocusInclusionClosed : conjugateLocusInclusion
  metricStructureClosed : metricStructure
  differentiabilityClosed : differentiability

def CutLocusClosed (C : ComparisonGeometry) (L : CutLocus C) : Prop :=
  L.conjugateLocusInclusion ∧ L.metricStructure ∧ L.differentiability

theorem cut_locus_closed_from_evidence (C : ComparisonGeometry) (L : CutLocus C) :
    CutLocusClosed C L := by
  exact And.intro L.conjugateLocusInclusionClosed
    (And.intro L.metricStructureClosed L.differentiabilityClosed)

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse