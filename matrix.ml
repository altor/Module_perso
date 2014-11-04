let init l h f =
  let m = Array.make_matrix l h 0
  in let rec aux i =
       if i = l then m
       else let rec aux2 j =
	      if j = h then ()
	      else (m.(i).(j) <- (f i j); aux2 (j+1))
	    in (aux2 0; aux (i+1))
     in aux 0

	      
