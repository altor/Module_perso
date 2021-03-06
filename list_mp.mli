(**
   Module personel
   @author d'Azémar Arthur (nov 2014)
*)

(** {1 Extraction de liste}*)

(** [take n l] renvoie une liste composé des n premiers éléments de l*)
val take : int -> 'a list -> 'a list

(** [drop n l] renvoie une liste composé des (t-n) derniers éléments de liste
 t étant la taille de l *)
val drop : int -> 'a list -> 'a list

(** {1 Transformation de liste}*)
(** [intersect l1 l2] renvoie une liste composé des élements de l1 présent dans l2 *)
val intersect : 'a list -> 'a list -> 'a list

val carthesian_product : 'a list -> 'b list -> ('a * 'b) list

val (/) : 'a list -> 'a list -> 'a list
  
(** [insert cmp val l] insert la valeur [val] dans la liste triè [l] en utilisant la fonction [cmp] pour comparer les valeur de [l] entre eux*)
val insert : ('a -> 'a -> int) -> 'a -> 'a list -> 'a list

					 
(** {1 Transformation de liste}*)
				
(** renvoi une nouvelle liste mélangé aléatoirement*)
val shuffle : 'a list -> 'a list

(** [rev_between] inverse renvoi la liste [l] dont les éléments aux positions [i] à [j] ont été inversés*)
val rev_between : 'a list -> int -> int -> 'a list
			    
(** {1 Conversion}*)
			    
(** [of_string chaine] convertie une chaine de caractére en liste *)
val of_string : string -> char list

(** {1 Création}*)
(** [seq i j] genere une liste de nombre consecutif croissant entre [i] et [j]*)
val seq : int -> int -> int list

(** {1 Divers}*)
(** [display f l] affiche la liste [l]  en utilisant la fonctoin [f] pour afficher chacun de ses élément. La liste est affichée tel qu'elle serais représentée par un interpréteur Ocaml*)
val display : ('a -> unit) -> 'a list ->  unit
			  
(** [max list cmp] renvoi le maximum d'une list*)
val max : 'a list -> ('a -> 'a -> int) -> 'a

					    			  
(** [min list cmp] renvoi le maximum d'une list*)
val min : 'a list -> ('a -> 'a -> int) -> 'a
