let extract_alpha s =
  let alpha = Hashtbl.create 26 in
  let f car =
    match Hashtbl.find alpha car with
      n -> Hashtbl.replace alpha car (n+1)
    | exception Not_found -> Hashtbl.add alpha car 1
  in let p car n acc =
       List_mp.insert
	 (fun (_, n1) (_, n2) -> compare n1 n2)
	 (car, n)
	 acc
     in  String.iter f s;
	 Hashtbl.fold p alpha []
       
type 'a tree =
  | Leaf of 'a
  | Node of 'a tree * 'a tree
let creer n1 n2 = Node ((Leaf n1), (Leaf n2))

let creer_arbre alpha =
  let rec aux = function
    | [(arbre, _)] -> arbre
    | (c1, n1)::(c2, n2)::tl ->
       aux (List_mp.insert
	      (fun (_, n1) (_, n2) -> compare n1 n2)
	      ((Node (c1, c2)), n1 + n2)
	      tl)
  in aux (List.map (fun (c, n) -> (Leaf c, n)) alpha)

let donner_code arbre =
  let hash_code = Hashtbl.create 26 in
  let hash_decode = Hashtbl.create 26 in
  let rec aux code = function
    | Leaf c ->
       Hashtbl.add hash_code c code;
       Hashtbl.add hash_decode code c
    | Node (n1, n2) ->
       aux (code^"0") n1;
       aux (code^"1") n2
  in aux "" arbre;
     (hash_code, hash_decode)

let code s hash_code =
  let p acc c =
    let code = Hashtbl.find hash_code c
    in acc^code
  in String_mp.fold_left p s ""

let find_first_substring s hash =
  let rec aux acc i =
    match Hashtbl.find hash acc with
      car -> (car, String.sub s i ((String.length s) - i))
    | exception Not_found -> aux (String.sub s 0 (i + 1)) (i + 1)
  in aux "" 0
			 
let decode s hash_decode =
  if s = "" then ""
  else
    let rec aux acc s2 =
      match find_first_substring s2 hash_decode with
	(car, "") -> String_mp.of_list (List.rev (car::acc))
      | (car, reste) -> aux (car::acc) reste
    in aux [] s
