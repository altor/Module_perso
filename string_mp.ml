let tl  = function
  | "" -> failwith "String_mp.tl"
  | chaine -> String.sub chaine 1 ((String.length chaine) - 1)

let hd  =  function
  | "" -> failwith "String_mp.hd"
  | chaine -> chaine.[0]

let take n  = function
  | chaine when String.length chaine < n -> failwith "String_mp.take : chaine trop courte"
  | chaine -> String.sub chaine 0 n

let drop n = function
  | chaine when String.length chaine < n -> failwith "String_mp.drop : chaine trop courte"
  | chaine -> String.sub chaine n ((String.length chaine) - n)

let cons carac chaine = (String.make 1 carac) ^ chaine

let of_char = String.make 1

let last_n n chaine =
  let taille = String.length chaine
  in if n > taille then failwith "String_mp.last_n : chaine trop courte"
    else String.sub chaine (taille - n) n

let of_list liste =
  let taille = List.length liste
  in let chaine = String.create taille
     in let rec aux i liste =
	  if i = taille
	  then chaine
	  else begin chaine.[i] <- (List.hd liste);
	    aux (i+1) (List.tl liste)
	  end
	in aux 0 liste
