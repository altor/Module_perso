(** opérateur de composition de fonction [(f |- g) x] est équivalent à [f (g x)]*)
val (|-) : ('a -> 'b) -> ('c -> 'a) -> 'c -> 'b

(** opérateur d'application a moindre priorité.
    [f $ g a] est équivalent à [f (g a)]
    c'est juste pour ne pas utiliser les paranthése
*)
val ($) : ('a -> 'b) -> 'a -> 'b

(** fonction identité *)
val id : 'a -> 'a

(** fonction couple *)
val couple : 'a -> 'b -> 'a * 'b
