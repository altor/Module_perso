(** [index_of tab elem] renvoi un type option contenant l'index de la premiére ocurence de elem dans tab ou None si tab ne contient pas elem*)
val index_of : 'a array -> 'a -> int option

(** mélange les éléments du tableau passé en argument*)
val shuffle : 'a array -> 'a array

(** [l_shift tab index n ] décale les élément a gauche d'index de n rangs vers la droite . Les anciennes valeurs écrasé par le décalage.
Lance une exeption si index dépasse la taille du tableau ou si le décalage est superieur à l'indice de départ *)
val l_shift : 'a array -> int -> int -> unit
  

