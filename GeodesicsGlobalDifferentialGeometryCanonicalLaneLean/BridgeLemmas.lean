import GeodesicsGlobalDifferentialGeometryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeodesicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse