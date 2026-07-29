import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure GlobalComparisonPackage where
  sectionalCurvatureBound : Prop
  bonnetMyersTheorem : Prop
  diameterBound : Prop
  fundamentalGroupFiniteness : Prop
  sphereTheorem : Prop

def GlobalComparisonClosed (G : GlobalComparisonPackage) : Prop :=
  G.bonnetMyersTheorem ∧ G.diameterBound ∧ G.fundamentalGroupFiniteness ∧ G.sphereTheorem

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse