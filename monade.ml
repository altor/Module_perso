open Fonction

module type Monade_type = sig
  type 'a m
  val return : 'a -> 'a m
  val ( >>= ) : 'a m -> ('a -> 'b m) -> 'b m
end


(* sig *)
(*   include Monade_type   *)
(*   val bindable : ('a -> 'b) -> 'a -> 'b m *)
(*   val double_bind : 'a m -> 'b m -> ('a -> ('b -> 'c) m) -> 'c m *)
(* end *)

module Monade = functor (M : Monade_type) -> struct
  type 'a m = 'a M.m
  let return = M.return
  let ( >>= ) = M.(>>=)
  let bindable f = return |- f
  let double_bind m1 m2 f = (m1 >>= f) >>= (fun f  -> m2 >>= (bindable f))
end
