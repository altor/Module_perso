(** un byte (octet) composé de 8 bits *)
type t

val zero : t
       
(** [Byte.set byte i b] renvoi une copie de [byte] dont le bit [i] vaut b
 *)
val set : t -> int -> int -> t

(** [Byte.get byte i] renvoi la valeur du bit [i] de [byte]
 *)
val get : t -> int -> int

(** [Byte.char_of_byte byte] renvoi la représentation de [byte] en char
 *)
val char_of_byte : t -> char

val of_char : char -> t

val of_int : int -> t
		      
val to_int : t -> int
