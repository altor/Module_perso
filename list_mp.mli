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
				
(** {1 Transformation de liste}*)
				
(** renvoi une nouvelle liste mélangé aléatoirement*)
val shuffle : 'a list -> 'a list

(** {1 Conversion}*)
			    
(** [of_string chaine] convertie une chaine de caractére en liste *)
val of_string : string -> char list
