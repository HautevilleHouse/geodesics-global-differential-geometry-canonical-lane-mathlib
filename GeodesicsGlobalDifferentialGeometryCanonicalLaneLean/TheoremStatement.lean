import GeodesicsGlobalDifferentialGeometryCanonicalLaneLean.Basic

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure GeodesicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeodesicsAdmittedObject where
  space : GeodesicsSpace
  completeRiemannianManifold : Prop
  geodesicConvexity : Prop
  exponentialMapDefined : Prop
  conclusion : exponentialMapDefined

def GeodesicsWitnessClosed (O : GeodesicsAdmittedObject) : Prop :=
  O.exponentialMapDefined

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse