(**
   Module personel

   @author d'Azémar Arthur (oct 2014)
*)


(** {2 les fonction de manipulation de option} *)

(** [return x] renvoie la valeur x, encapsulé dans un environement de type Option (c'est a dire Just x) *)
val return : 'a -> 'a option


(** [ m >>= f] applique la fonction f a la valeur contenue dans m et renvoi une nouvelle valeur encapsulé dans un environement de type option*)
val (>>=) : 'a option -> ('a -> 'b) -> 'b option 

(** double_bind à le même rôle que >>= mais applique une fonction à 2 valeur contenue dans un environement de type option pour renvoyé une nouvelle valeur de type option*)
val double_bind : 'a option -> 'a option -> ('a -> 'a -> 'b) -> 'b option

(** [safe f x] applique une f, une fonction pouvant potentiellement renvoyé une exeption, à x.
La valeur de retour de f est ensuite encapsulé dans un environement de type option*)
val safe : ('a -> 'b) -> 'a -> 'b option
