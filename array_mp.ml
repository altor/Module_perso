let index_of tab elem =
  let rec aux = function
    | i when i = Array.length tab -> None
    | i when tab.(i) = elem -> Some i
    | i -> aux (i+1)
  in aux 0

let l_shift tab index n =
  let taille = Array.length tab in
  if index >= taille then failwith "l_shift : erreur indice de départ trop grand"
  else if n > index then failwith " l_shift : décalage trop grand"
  else for i = index to taille - 1 do
      tab.(i-n) <- tab.(i)
    done
      

let shuffle tab = 
  Random.self_init ();
  let t = Array.length tab in
  let tab2 = Array.make t (tab.(0))
  in let rec aux taille = 
       if taille = 1 then begin
	 tab2.(0) <- tab.(0);
	 tab2
       end
       else begin 
	 let i = Random.int taille
	 in tab2.(taille-1) <- tab.(i);
	 if i != taille - 1 then
	   l_shift tab (i+1) 1
	 else ();
	 aux (taille - 1)
       end
     in aux t
	     
	   
    
