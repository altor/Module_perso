module type Interface = sig
    type 'a m
    val return : 'a -> 'a m
    val (>>=) : 'a m -> ('a -> 'b m) -> 'b m
  end

module Make (M : Interface) : sig
    include Interface with type 'a m = 'a M.m
    val (<$>) : ('a -> 'b) -> 'a m -> 'b m
    val (<*>) : ('a -> 'b) m -> 'a m -> 'b m
    val (>>) : 'a m -> 'b m -> 'b m
    val join : ('a m) m -> 'a m
  end = 
  struct
    type 'a m = 'a M.m
    let return = M.return
    let (>>=) = M.(>>=)
    let comp f g x = f (g x)
    let bindable f = comp return f
    let id x = x
    let (<$>) f m = m >>= (bindable f)
    let (<*>) mf m = mf >>= fun f -> f <$> m
    let (>>) ma mb = ma >>= (fun _ -> mb)
    let join mm = mm >>= id
  end
