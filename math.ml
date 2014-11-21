let length_int n =
  let rec aux acc n =
    if n = 0 then acc
    else aux (acc + 1) (n / 10)
  in aux 0 n

let pow_int a n =
  let rec aux acc n =
      if n = 0 then acc
      else aux (acc * a) (n - 1)
  in aux 1 n  
