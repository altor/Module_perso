(** [init h l f] renvoie une matrice de taille l par h ou chaque élément de coordonée (i,j) est initialiser avec la valeur [f i j]*)
val init : int -> int -> (int ->  int-> 'a) -> 'a array array

(** [map f m] remplis chaque case de la matrice m avec le résultat de la fonction f appliqué au contenue de la case*)
val map : ('a -> 'b) -> 'a array array -> 'b array array

(** renvoi un couple d'entier contenant la hauteur et la longueur de la matrice*)
val length : 'a array array -> int * int

(** [iter f m] applique la fonction f a tout les élément de m **)
val iter : ('a -> unit) -> 'a array array -> unit

(** [iteri f m] comme iter mais la fonction f prend en parametre la position de l'élément par rapport à l'axe des ordonées et à l'axe des abssice**)
val iteri : (int -> int -> 'a -> unit) -> 'a array array -> unit
