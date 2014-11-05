(** [init h l f] renvoie une matrice de taille l par h ou chaque élément de coordonée (i,j) est initialiser avec la valeur [f i j]*)
val init : int -> int -> (int ->  int-> 'a) -> 'a array array

(** [map f m] remplis chaque case de la matrice m avec le résultat de la fonction f appliqué au contenue de la case*)
val map : ('a -> 'b) -> 'a array array -> 'b array array

(** renvoi un couple d'entier contenant la longueur et la hauteur de la matrice*)
val length : 'a array array -> int * int

