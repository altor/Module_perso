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
  

let intersect l1 l2 =
  List.fold_left (fun acc elem ->
			 if List.mem elem l2
			 then elem::acc
			 else acc)
		  []
		  l1
		   

let shuffle liste =
  Array.to_list (Array_mp.shuffle (Array.of_list liste))


let of_string chaine =
  let taille = String.length chaine
  in let rec aux i acc =
       if i < 0
       then acc
       else aux (i - 1) ((chaine.[i])::acc)
     in aux (taille - 1) []

let seq i j =
  let rec aux k acc =
    match k with
      k when k > j -> List.rev acc
    | k -> aux (k + 1) (k::acc)
  in aux i []

let display f list =
  print_char '[';
  let rec aux = function
    | [] -> print_char ']'
    | [x] -> f x; aux []
    | x::xs -> f x ; print_char ';' ; aux xs
  in aux list
	     

let insert cmp v l =
  let rec aux acc = function
    | [] -> acc @ [v]
    | x::xs ->
       match cmp v x with
       | 1 -> aux (x::acc) xs
       | _ -> (List.rev acc) @ [v;x] @ xs
  in aux [] l
