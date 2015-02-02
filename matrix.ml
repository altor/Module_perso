
let init h l f =
  let rev f i j = f j i
  in let p i = Array.init l ((rev f) i )
  in Array.init h p

let length m =
  (Array.length m, Array.length m.(0))


let map f m =
  let (h,l) = length m
  in let m2 = Array.make_matrix h l (f m.(0).(0))
     in for i = 0 to h - 1 do
	  for j = 0 to l - 1 do
	    m2.(i).(j) <- f m.(i).(j)
	  done
	done;
	m2

let iter f m =
  Array.iter (Array.iter f) m

let iteri f m =
  let f2 i = Array.iteri (f i)
  in Array.iteri f2 m
      
  
