import GeodesicsGlobalDifferentialGeometryCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace GeodesicsGlobalDifferentialGeometryCanonicalLaneLean

structure AdmissibleClass where
  object : GeodesicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeodesicsWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeodesicsGlobalDifferentialGeometryCanonicalLaneLean
end HautevilleHouse