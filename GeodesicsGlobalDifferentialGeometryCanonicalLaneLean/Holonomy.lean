import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure HolonomyPackage where
  connection : Type u
  parallelTransport : Type v
  holonomyGroup : Type w
  ambroseSingerTheorem : Prop
  holonomyReduction : Prop
  ricciHolonomyRelation : Prop

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.ambroseSingerTheorem ∧ H.holonomyReduction ∧ H.ricciHolonomyRelation

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse