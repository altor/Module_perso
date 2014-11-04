(** [init l h f] renvoie une matrice de taille l par h ou chaque élément de coordonée (i,j) est initialiser avec la valeur [f i j]*)
val init : int -> int -> (int ->  int-> 'a) -> 'a array array
