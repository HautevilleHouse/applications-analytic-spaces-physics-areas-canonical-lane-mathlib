import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ApplicationsAnalyticSpacesPhysicsAreasCanonicalLaneLean

structure PhysicalAnalyticSpaceObject where
  sourceKey : String
  theoremObject : String
  bridgeRoute : String
  analyticContinuationChecked : Prop
  analyticContinuationWitness : analyticContinuationChecked
  physicalObservableChecked : Prop
  physicalObservableWitness : physicalObservableChecked
  spectralBridgeChecked : Prop
  spectralBridgeWitness : spectralBridgeChecked
  carriedRemainder : Prop
  carriedRemainderWitness : carriedRemainder

def NativeBridgeClosed (O : PhysicalAnalyticSpaceObject) : Prop :=
  O.analyticContinuationChecked ∧ O.physicalObservableChecked ∧ O.spectralBridgeChecked

structure AdmissibleClass where
  object : PhysicalAnalyticSpaceObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ApplicationsAnalyticSpacesPhysicsAreasCanonicalLaneLean
end HautevilleHouse