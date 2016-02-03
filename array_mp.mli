(** [contains elem tab] renvoie [true] si [elem] est présent dans [tab], [false] sinon
 *)
val contains : 'a -> 'a array -> bool

(** [max_i compare tab] renvoi l'indice du plus grand élément de [tab] en utilisant la fonction [compare] pour comparer les éléments de [tab] entre eux
renvoi toujours le plus petit indice si plusieurs éléments sont les plus grand*)
val max_i : ('a -> 'a -> int) -> 'a array -> int

(** [max compare tab] renvoi le plus grand élément de [tab] en utilisant la fonction [compare] pour comparer les éléments de [tab] entre eux
renvoi toujours l'élément d'indice le plus petit si plusieurs élément sont les plus grands*)
val max : ('a -> 'a -> int) -> 'a array -> 'a


(** [index_of tab elem] renvoi l'index de la premiére ocurence de elem dans tab ou une exeption   si tab ne contient pas elem*)
val index_of : 'a array -> 'a -> int

(** [m_index_of tab elem] renvoi un type option contenant l'index de la premiére ocurence de elem dans tab ou None si tab ne contient pas elem*)
val m_index_of : 'a array -> 'a -> int option

(** mélange les éléments du tableau passé en argument*)
val shuffle : 'a array -> 'a array

(** [l_shift tab index n ] décale les élément a gauche d'index de n rangs vers la droite . Les anciennes valeurs écrasé par le décalage.
Lance une exeption si index dépasse la taille du tableau ou si le décalage est superieur à l'indice de départ *)
val l_shift : 'a array -> int -> int -> unit

(** [of_string s] transforme la chaine de caractère [s] en un tableau de taille même taille .Chaque case d'indice [i] est initialisé avec la valeur [s.[i]]*)
val of_string : string -> char array

(** [display array f] affiche le tableau [array]  en utilisant la fonctoin [f] pour afficher chacun de ces élément. Le tableau est affiché tel qu'il serais représenté par un interpréteur Ocaml*)
val display : ('a -> unit) -> 'a array ->  unit

(** [dicho_member x f tab] renvoi [true] si l'élément [x] est présent dans le tableau [tab]. La recherche est une dichotomie, elle utilise la fonction [f] pour comparer les éléments. Le tableau [tab] dois donc être trié*)
val dicho_member : 'a -> ('a -> 'a -> int) -> 'a array -> bool
