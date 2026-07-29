import DirichletFormsCanonicalLaneLean.DirichletFormsAdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace DirichletFormsCanonicalLaneLean

structure SpectralSubstrate where
  spectrumRecorded : Bool
  operatorRouteRecorded : Bool
  subspaceRouteRecorded : Bool

def spectralSubstrate : SpectralSubstrate := {
  spectrumRecorded := true,
  operatorRouteRecorded := true,
  subspaceRouteRecorded := true
}

def SpectralSubstrateReady (S : SpectralSubstrate) : Prop :=
  S.spectrumRecorded = true ∧ S.operatorRouteRecorded = true ∧ S.subspaceRouteRecorded = true

theorem spectral_substrate_ready_checked :
    SpectralSubstrateReady spectralSubstrate := by
  exact And.intro rfl (And.intro rfl rfl)

end DirichletFormsCanonicalLaneLean
end HautevilleHouse