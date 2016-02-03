let contains elem tab  =
  let rec aux = function
    | i when i = Array.length tab -> false
    | i when tab.(i) = elem -> true
    | i -> aux (i+1)
  in aux 0

let max_i compare tab =
  let taille = Array.length tab
  in if taille = 0 
    then failwith "Array_mp.max_i : Tableau vide"
    else 
      let rec aux i max i_max = 
	  if i = taille then i_max
	  else let elem = tab.(i)
	       in if compare elem max = 1 
		 then aux (i + 1) elem i
		 else aux (i + 1) max i_max
      in aux 1 tab.(0) 0

let max compare tab =
  if tab = [||] then failwith "Array_mp.max : Tableau vide"
  else let i = max_i compare tab
       in tab.(i)

let m_index_of tab elem =
  let rec aux = function
    | i when i = Array.length tab -> None
    | i when tab.(i) = elem -> Some i
    | i -> aux (i+1)
  in aux 0

let index_of tab elem = 
  match m_index_of tab elem with
    Some i -> i
  | None -> failwith "Array_mp.index_of : élément non présent dans le tableau"

let l_shift tab index n =
  let taille = Array.length tab in
  if index >= taille then failwith "l_shift : erreur indice de départ trop grand"
  else if n > index then failwith " l_shift : décalage trop grand"
  else for i = index to taille - 1 do
      tab.(i-n) <- tab.(i)
    done
      

let shuffle tab =
  Random.self_init ();
  let taille = Array.length tab
  in let tab2 = Array.make taille tab.(0)
     in let rec aux tab taille =
	  if taille = 0 then ()
	  else begin
	      let i = Random.int taille
	      in tab2.(taille - 1) <- tab.(i);
		 aux (Array.append (Array.sub tab 0 i) (Array.sub tab (i + 1) (taille - (i + 1)))) (taille - 1)
	      end
	in aux tab taille;
	tab2
	     
let of_string s =
  let tab = Array.make (String.length s) 'a'
  in let p i car = tab.(i) <- car;
		   i+1
     in String_mp.fold_left p s 0;
	tab

let display f array =
  print_string "[|";
  (match Array.length array with
    0 -> ()
  | 1 -> f array.(0)
  | n ->
     f array.(0);
     Array.iter (fun x ->
		 print_char ';';
		 f x)
		(Array.sub array 1 (n - 1)));
  print_string "|]"
	   
	 
let dicho_member x f tab =
  let length = Array.length tab in
  let rec aux debut fin =
    if debut >= fin then
      false
    else
      let milieu = (debut + fin) / 2 
      in match compare tab.(milieu) x with
	   0 -> true
	 | -1 -> aux (milieu + 1) fin
	 | _ -> aux debut (milieu - 1)
  in aux 0 length
