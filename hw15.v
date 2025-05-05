Require Import Coq.Setoids.Setoid.
Require Import Coq.ZArith.ZArith.
Require Import Coq.micromega.Psatz.
Require Import Coq.Logic.Classical_Prop.
Local Open Scope Z.

(** * 关于“任意”的证明 *)

(************)
(** 习题：  *)
(************)

(** 请在Coq中证明下面性质：*)

Theorem forall_forall : forall (X Y: Type) (P: X -> Y -> Prop),
  (forall x y, P x y) -> (forall y x, P x y).
Admitted. (* 请删除这一行_[Admitted]_并填入你的证明，以_[Qed]_结束。 *)


(************)
(** 习题：  *)
(************)

(** 请在Coq中证明下面性质：*)

Theorem forall_iff : forall (X: Type) (P Q: X -> Prop),
  (forall x: X, P x <-> Q x) ->
  ((forall x: X, P x) <-> (forall x: X, Q x)).
Admitted. (* 请删除这一行_[Admitted]_并填入你的证明，以_[Qed]_结束。 *)


(************)
(** 习题：  *)
(************)

(** 请在Coq中证明下面性质：*)

Theorem forall_or: forall (A: Type) (P Q: A -> Prop),
  (forall a: A, P a) \/ (forall a: A, Q a) ->
  (forall a: A, P a \/ Q a).
Admitted. (* 请删除这一行_[Admitted]_并填入你的证明，以_[Qed]_结束。 *)



(** * 关于“非”的证明 *)

(************)
(** 习题：  *)
(************)

(** 请在Coq中证明下面性质：*)

Theorem forall_not: forall (X: Type) (P: X -> Prop),
  (forall x: X, ~ P x) -> ~ (exists x: X, P x).
Admitted. (* 请删除这一行_[Admitted]_并填入你的证明，以_[Qed]_结束。 *)


(************)
(** 习题：  *)
(************)

(** 请在Coq中证明下面性质：*)

Theorem exists_not: forall (X: Type) (P: X -> Prop),
  (exists x: X, ~ P x) -> ~ (forall x: X, P x).
Admitted. (* 请删除这一行_[Admitted]_并填入你的证明，以_[Qed]_结束。 *)


