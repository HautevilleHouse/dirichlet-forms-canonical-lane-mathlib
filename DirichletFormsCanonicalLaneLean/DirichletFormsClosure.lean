import DirichletFormsCanonicalLaneLean.DirichletFormsCertificate
import DirichletFormsCanonicalLaneLean.DirichletFormsFinalTheorem

namespace HautevilleHouse
namespace DirichletFormsCanonicalLaneLean

def dirichletFormAdmissibleClass : AdmissibleClass := {
  object := { energy := 1, domain := 1, closed := true },
  endpointSatisfied := DirichletFormsCertificateClosed dirichletFormsCertificate,
  remainderRecorded := True,
  gateWitness := Or.inl dirichlet_forms_certificate_closed_checked
}

def DirichletFormsAdmittedClosure : Prop :=
  ConstrainedDirichletFormsClosure dirichletFormAdmissibleClass

theorem dirichlet_forms_admitted_closure_checked :
    DirichletFormsAdmittedClosure := by
  exact constrained_dirichlet_forms_endgame dirichletFormAdmissibleClass

end DirichletFormsCanonicalLaneLean
end HautevilleHouse