import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletFormsCanonicalLaneLean

def DirichletFormClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClassicalSourceBoundaryCarried

def NativeDirichletClosure (A : AdmissibleClass) : Prop :=
  DirichletFormClosure A

theorem dirichlet_form_closure_proof (A : AdmissibleClass) :
    DirichletFormClosure A := by
  exact And.intro (bridge_from_admissible_class A)
    (And.intro (gate_from_admissible_class A) classical_source_boundary_carried_checked)

theorem native_dirichlet_closure_checked (A : AdmissibleClass) :
    NativeDirichletClosure A := by
  exact dirichlet_form_closure_proof A

end DirichletFormsCanonicalLaneLean
end HautevilleHouse