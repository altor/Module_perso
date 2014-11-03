let index_of tab elem =
  let rec aux = function
    | i when i = Array.length tab -> None
    | i when tab.(i) = elem -> Some i
    | i -> aux (i+1)
  in aux 0
