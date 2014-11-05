let init h l  f =
  let m = Array.make_matrix h l (f 0 0)
  in let rec aux i =
       if i = h then m
       else let rec aux2 j =
	      if j = l then ()
	      else (m.(i).(j) <- (f i j); aux2 (j+1))
	    in (aux2 0; aux (i+1))
     in aux 0

let length m =
  (Array.length m, Array.length m.(0))


let map f m =
  let (h,l) = length m
  in let m2 = Array.make_matrix h l (f m.(0).(0))
     in for i = 0 to h - 1do
	 for j = 0 to l - 1do
	   m2.(i).(j) <- f m.(i).(j)
	 done
       done;
     m2
      
  
