(** [length_int n] donne le nombre de chiffre de n*)
val length_int : int -> int

(** [pow_int a n] renvoie a élever a la puissane n *)
val pow_int : int -> int -> int

(** [eucl_div n1 n2] renvoi le resultat de la division euclidienne avec son reste sous forme de couple *)
val eucl_div : int -> int -> int * int

(** [n1 // n2] renvoi le résultat réèl de la division de [n1] par [n2] *)
val (//) : int -> int -> float
