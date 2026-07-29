import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletFormsCanonicalLaneLean

structure FormCore where
  energy : ℕ
  domain : ℕ
  closed : Bool

def formClosed (F : FormCore) : Prop :=
  F.closed = true

structure AdmissibleClass where
  object : FormCore
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  formClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DirichletFormsCanonicalLaneLean
end HautevilleHouse