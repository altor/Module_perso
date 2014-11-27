(**
   Module personel

   @author d'Azémar Arthur (oct 2014)
*)

(** {2 fonction de conversion}*)

(** [of_char carac] convertie carac en chaine de caractére.*)
val of_char : char -> string

(** {2 Fonction de manipulation}*)

(** renvoi la queu d'une chaine de caractére (c'est a dire la chaine privée de son 1er caractére)
    renvoi Failure "String2.tl" si la chaine est vide*)

val tl : string -> string

(** renvoi la tête d'une chaine de caractére (c'est a dire le 1er caractére)
    renvoi Failure "String2.hd" si la chaine est vide*)

val hd : string -> char

(** [take n chaine] renvoi une nouvelle chaine de caractére composé des n premiers caractére de chaine*)

val take: int -> string -> string

(** [drop n chaine] renvoi une copie de chaine privée de ces n premiers caractére. *)
val drop : int -> string -> string

(** [last_n n chaine] renvoi les n derniers caractére de chaine *)
val last_n : int -> string -> string
(** [cons carac chaine] ajoute carac au début de la chaine de caractére. *)
val cons : char -> string -> string

(** [of_list liste] renvoi une string ou chaque caractére est un élément de [liste] *)
val of_list : char list -> string
