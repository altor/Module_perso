type t_code = (char, string) Hashtbl.t
type t_decode = (string, char) Hashtbl.t

(** [generate s] renvois les structure de donnée permetant de coder et décoder une chaine à partir du codage du huffman générer à partir de [s]*)
val generate : string ->  t_code * t_decode

(** [code s t_code] code la chaine [s] selon le codage [t_code]*)
val code : string -> t_code -> string

(** [decode s t_decode] decode la chaine [s] selon le codage [t_decode]*)
val decode : string -> t_decode -> string
