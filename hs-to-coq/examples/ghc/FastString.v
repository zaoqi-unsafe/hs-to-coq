Require Import GHC.Base.

Definition FastString := String.

Instance instance_FastString_Eq_ : Eq_ FastString := {}.
Admitted.

Instance instance_FastString_Ord : Ord FastString := {}.
Admitted.

Definition fsLit (s : String) : FastString := s.