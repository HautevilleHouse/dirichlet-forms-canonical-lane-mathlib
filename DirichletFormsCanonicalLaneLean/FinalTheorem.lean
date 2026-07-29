import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletFormsCanonicalLaneLean

def ConstrainedDirichletFormsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClassicalSourceBoundaryCarried

theorem constrained_dirichlet_forms_endgame (A : AdmissibleClass) :
    ConstrainedDirichletFormsClosure A := by
  refine And.intro ?_ (And.intro ?_ ?_)
  · exact bridge_from_admissible_class A
  · exact gate_from_admissible_class A
  · exact classical_source_boundary_carried_checked

end DirichletFormsCanonicalLaneLean
end HautevilleHouse