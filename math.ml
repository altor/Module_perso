let length_int n =
  let rec aux acc n =
    if n = 0 then acc
    else aux (acc + 1) (n / 10)
  in aux 0 n

let rec pow_int a n =
  if n < 0 then invalid_arg (string_of_int n)
  else if n = 0 then 1
  else let r = pow_int a (n / 2)
       in r * r * (if n mod 2 = 0 then 1 else a)

let eucl_div n1 n2 =
  ( n1 / n2, n1 mod n2)

let (//) n1 n2 =
  (float_of_int n1) /. (float_of_int n2)
