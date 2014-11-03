(**
   Module personel
   @autor d'Azémar Arthur (nov 2014)
*)

(** {Extraction de liste}*)

(** [take n l] renvoi une liste composé des n premiers éléments de l*)
val take : int -> 'a list -> 'a list

(** [take n l] renvoi une liste composé des (t-n) derniers éléments de liste
 t étant la taille de l *)
val drop : int -> 'a list -> 'a list

(** {Transformation de la liste}*)
(** renvoi une nouvelle liste mélangé aléatoirement*)
val blend : 'a list -> 'a list
