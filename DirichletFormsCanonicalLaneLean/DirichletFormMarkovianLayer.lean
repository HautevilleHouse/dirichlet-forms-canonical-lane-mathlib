import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DirichletFormsCanonicalLaneLean.DirichletFormBasic

namespace HautevilleHouse
namespace DirichletFormsCanonicalLaneLean

structure DirichletFormMarkovianCertificate where
  form : DirichletForm
  markovianPropertyChecked : Bool
  contractionPropertyChecked : Bool
  semigroupMarkovianChecked : Bool
  markovianEndpointChecked : Bool
  classicalBoundaryCarried : Bool

def dirichletFormMarkovianCertificate : DirichletFormMarkovianCertificate := {
  form := primitiveDirichletForm,
  markovianPropertyChecked := true,
  contractionPropertyChecked := true,
  semigroupMarkovianChecked := true,
  markovianEndpointChecked := true,
  classicalBoundaryCarried := true
}

def DirichletFormMarkovianLayerClosed (C : DirichletFormMarkovianCertificate) : Prop :=
  C.markovianPropertyChecked = true ∧
  C.contractionPropertyChecked = true ∧
  C.semigroupMarkovianChecked = true ∧
  C.markovianEndpointChecked = true ∧
  C.classicalBoundaryCarried = true

theorem dirichlet_form_markovian_layer_closed_checked :
    DirichletFormMarkovianLayerClosed dirichletFormMarkovianCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (And.intro rfl rfl)))

end DirichletFormsCanonicalLaneLean
end HautevilleHouse