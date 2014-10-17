let return x = Some x

let bind m f = match m with
  | Some x ->  f x
  | _ -> None




let (>>=) = bind

let comp f g x = f (g x)

let bindable f = comp return f

let double_bind m1 m2 f = (m1 >>= f) >>= (fun f  -> m2 >>= (bindable f))

let safe f x = 
  try return (f x) with
    _ -> None

