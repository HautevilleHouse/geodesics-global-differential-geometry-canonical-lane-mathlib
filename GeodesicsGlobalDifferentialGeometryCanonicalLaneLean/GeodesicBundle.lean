import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure GeodesicBundle where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Type v
  tangentBundle : Type w
  connection : Type x
  geodesicSpray : Type y
  exponentialMap : Type z
  smoothStructureTerm : smoothStructure
  geodesicSprayTerm : geodesicSpray

def GeodesicBundleEvidence (G : GeodesicBundle) : Prop :=
  G.smoothStructure ≠ False ∧ G.geodesicSpray ≠ False

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse