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

let (/) l1 l2 =
  List.fold_left (fun acc elem ->
      if not(List.mem elem l2)
      then elem::acc
      else acc)
		 []
		 l1
		   

let shuffle d =
    let nd = List.map (fun c -> (Random.bits (), c)) d in
    let sond = List.sort compare nd in
    List.map snd sond
  (* Array.to_list (Array_mp.shuffle (Array.of_list liste)) *)

let rev_between list i j =
  let rec aux l1 l2 l3 k = function
    | [] -> (List.rev l1) @ l2 @ (List.rev l3)
    | x::xs when k < i -> aux (x::l1) l2 l3 (k + 1) xs
    | x::xs when k > j -> aux l1 l2 (x::l3) (k + 1) xs
    | x::xs -> aux l1 (x::l2) l3 (k + 1) xs
  in aux [] [] [] 0 list
  
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

let carthesian_product l1 l2 =
  let p1 acc1 a =
    let p2 acc2 b = (a,b)::acc2
    in (List.fold_left p2 [] l2)@acc1
  in List.fold_left p1 [] l1


let max l cmp =
  let p max a = if cmp max a = 1 then max else a 
  in List.fold_left p (List.hd l) l

let min l cmp =
  let p min a = if cmp min a = -1 then min else a 
  in List.fold_left p (List.hd l) l
