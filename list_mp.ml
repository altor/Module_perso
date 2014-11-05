let take n liste =
  let rec aux acc n = function
    | [] -> failwith "take : pas assez d'élément dans la liste"
    | liste when n = 0 -> List.rev acc
    | hd::tl -> aux (hd::acc) (n-1) tl
  in aux [] n liste

let rec drop n = function
  | [] -> failwith "pas assez d'éléments dans la liste"
  | liste when n = 0 -> liste
  | hd::tl -> drop (n-1) tl
  


let shuffle liste =
  Array.to_list (Array_mp.shuffle (Array.of_list liste))


