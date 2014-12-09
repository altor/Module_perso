
(** type de la table de hashage de 'a vers 'b*)
type ('a , 'b) t

(** [create n] créee une table de hashage de taille n*)
val create : ?random:bool -> int -> ('a , 'b) t

(** [clear tbl] vide la table de hashage [tbl]*)
val clear : ('a , 'b) t -> unit * (('a , 'b) t)

(** [reset tbl] comme clear mais rétrécis la table a sa taille initiale*)
val reset : ('a , 'b) t -> unit * (('a , 'b) t)

(** [copy tbl] renvoie une copie de la table de hashage [tbl]*)
val copy :  ('a , 'b) t ->  ('a , 'b) t

(** [add x y tbl] ajoute une liaison x vers y dans la table tbl*)
val add : 'a -> 'b -> ('a , 'b) t -> unit * (('a , 'b) t)

(** [find x tbl] retourne l'élément correspondant a x dans la table tbl ainsi que l'anciene table*)
val find : 'a -> ('a , 'b) t -> 'b * (('a , 'b) t)


