import HautevilleHouse.ApplicationsAnalyticSpacesPhysicsAreasCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ApplicationsAnalyticSpacesPhysicsAreasCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  refine ⟨A.object.analyticContinuationWitness, A.object.physicalObservableWitness, A.object.spectralBridgeWitness⟩

end ApplicationsAnalyticSpacesPhysicsAreasCanonicalLaneLean
end HautevilleHouse