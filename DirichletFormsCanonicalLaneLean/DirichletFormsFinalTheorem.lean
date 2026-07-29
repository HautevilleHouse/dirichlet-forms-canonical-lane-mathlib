import DirichletFormsCanonicalLaneLean.DirichletFormsGateLemmas

namespace HautevilleHouse
namespace DirichletFormsCanonicalLaneLean

def ConstrainedDirichletFormsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ (∃ (f : ℕ), True)

theorem constrained_dirichlet_forms_endgame (A : AdmissibleClass) :
    ConstrainedDirichletFormsClosure A := by
  refine And.intro (bridge_from_admissible_class A) (And.intro (gate_from_admissible_class A) ?_)
  exact ⟨0, trivial⟩

end DirichletFormsCanonicalLaneLean
end HautevilleHouse