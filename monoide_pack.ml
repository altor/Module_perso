module type TYPE = sig
    type t
end

module Liste (T : TYPE) : (Monoide.Interface with type m = T.t list) = struct
    type m = T.t list
    let neutre = []
    let combine l1 l2 = l1 @ l2
  end

module String : (Monoide.Interface with type m = string) = struct
    type m = string
    let neutre = ""
    let combine = (^)
end

module Int_plus : (Monoide.Interface with type m = int) = struct
  type m = int
  let neutre = 0
  let combine = (+)
end
