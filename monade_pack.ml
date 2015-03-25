module OPTION : Monade.Interface with type 'a m = 'a option = struct
    type 'a m = 'a option
    let return x = Some x
    let (>>=) m f = 
      match m with
	Some x -> f x
      | None -> None
  end

module Option =
  struct
    include Monade.Make(OPTION) 
    let safe f x = try Some (f x) with _ -> None
  end
module LISTE : (Monade.Interface with type 'a m = 'a list) = struct
    type 'a m = 'a list
    let return x = [x]
    let (>>=) m f =
      match m with 
	[] -> []
      | liste -> List.concat (List.map f liste)
  end

module Liste = Monade.Make(LISTE)
						
module WRITER_MAKE (M : Monoide.Interface) =
  struct
    type 'a m = ('a * M.m)
    let return x = (x, M.neutre)
    let (>>=) (x, log) f =
      let (x2, log2) = f x
      in (x2, M.combine log log2)
  end

module Writer_make (M : Monoide.Interface) = struct
    include Monade.Make(WRITER_MAKE(M))
    let tell msg = ((),msg)
  end

module State =
  struct

    module type TYPE = sig
	type state
      end

    module MAKE (M : TYPE) = struct
	type 'a m = M.state -> 'a * M.state
	let return x = fun s -> (x,s)
	let (>>=) h f = fun s -> let (value, new_state) = h s
				 in let g = f value
				    in g new_state
      end
    module Make (M : TYPE) = struct
	include Monade.Make(MAKE(M))
	let get_val (v,_) = v
	let get_state (_,s) = s
      end
  end
