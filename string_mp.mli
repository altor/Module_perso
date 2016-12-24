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

(** [fold_left f acc s] est équivalent à [ f (... (f (f acc s.[0]) s.[1]) ...) s.[n-1]]. [s] étant une chaine de caractére de taille n *)
val fold_left : ('a -> char -> 'a) -> string -> 'a -> 'a

(** [fold_left_i f acc s] est équivalent à [ f (n-1 (... (f 1 (f 0 acc s.[0]) s.[1]) ...) s.[n-1]]. [s] étant une chaine de caractére de taille n *)
val fold_left_i : (int -> 'a -> char -> 'a) -> string -> 'a -> 'a

(** [to_list liste] renvoi la liste des caractères de la liste*)
val to_list : string -> char list

(** [rotation chaine] met le caractére [chaine.[0]] à la fin de [chaine]*)
val rotate : string -> string

val iteri : (int -> char -> unit) -> string -> unit
val words : string -> string list
