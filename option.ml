
let return x = Some x

let bind m f = match m with
  | Some x -> Some (f x)
  | _ -> None

let double_bind m1 m2 f =
  match (m1,m2) with
  | (None, _) -> None
  | (_, None) -> None
  | (Some x1, Some x2) -> Some (f x1 x2)

let (>>=) = bind

let safe f x = 
  try return (f x) with
    _ -> None
