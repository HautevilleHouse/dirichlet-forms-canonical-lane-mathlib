import DirichletFormsCanonicalLaneLean.DirichletFormsAdmissibleClass

namespace HautevilleHouse
namespace DirichletFormsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  formClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.closed

end DirichletFormsCanonicalLaneLean
end HautevilleHouse