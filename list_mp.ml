let take n liste =
  let rec aux acc n = function
    | [] -> failwith "take : pas assez d'élément dans la liste"
    | liste when n = 0 -> List.rev acc
    | hd::tl -> aux (hd::acc) (n-1) tl
  in aux [] n liste

let rec drop n = function
  | [] -> failwith "pas assez d'éléments dans la liste"
  | liste when n = 0 -> liste
  | hd::tl -> drop (n-1) tl
  


let blend liste  =
  Random.self_init ();
  let rec aux acc taille = function
    | [] -> acc
    | liste -> let i = Random.int taille
	       in let l1 = take i liste
		  in let l2 = drop i liste
		     in let l3 = List.tl l2
			in let elem = List.hd l2
			   in let liste_final = l1 @ l3
			      in aux (elem::acc) (taille - 1) liste_final
  in aux [] (List.length liste) liste


