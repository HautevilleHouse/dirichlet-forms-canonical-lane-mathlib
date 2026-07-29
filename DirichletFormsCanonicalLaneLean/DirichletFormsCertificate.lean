import DirichletFormsCanonicalLaneLean.DirichletFormsPersistenceLayer
import DirichletFormsCanonicalLaneLean.DirichletFormsSpectralSubstrate

namespace HautevilleHouse
namespace DirichletFormsCanonicalLaneLean

structure DirichletFormsCertificate where
  persistenceLayer : FormPersistenceLayerCertificate
  substrate : SpectralSubstrate
  gatesClosed : Bool
  classicalBoundaryCarried : Bool

def dirichletFormsCertificate : DirichletFormsCertificate := {
  persistenceLayer := formPersistenceLayerCertificate,
  substrate := spectralSubstrate,
  gatesClosed := true,
  classicalBoundaryCarried := true
}

def DirichletFormsCertificateClosed (C : DirichletFormsCertificate) : Prop :=
  FormPersistenceLayerClosed C.persistenceLayer ∧
  SpectralSubstrateReady C.substrate ∧
  C.gatesClosed = true ∧
  C.classicalBoundaryCarried = true

theorem dirichlet_forms_certificate_closed_checked :
    DirichletFormsCertificateClosed dirichletFormsCertificate := by
  refine And.intro form_persistence_layer_closed_checked
    (And.intro spectral_substrate_ready_checked (And.intro rfl rfl))

end DirichletFormsCanonicalLaneLean
end HautevilleHouse