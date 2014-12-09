type ('a , 'b) t = ('a , 'b) Hashtbl.t

let create = Hashtbl.create

let copy = Hashtbl.copy

let clear tbl =
  let _ = Hashtbl.clear tbl
  in ((), tbl)

let reset tbl = 
  let _ = Hashtbl.reset tbl
  in ((), tbl)

let add x y tbl =
  let tbl2 = copy tbl
  in let _ = Hashtbl.add tbl2 x y 
     in ((), tbl2)

let find x tbl =
  let y = Hashtbl.find tbl x
  in (y, tbl)

