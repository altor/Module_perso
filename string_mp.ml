let tl  = function
  | "" -> failwith "String2.tl"
  | chaine -> String.sub chaine 1 ((String.length chaine) - 1)

let hd  =  function
  | "" -> failwith "String2.hd"
  | chaine -> chaine.[0]

let take n  = function
  | chaine when String.length chaine < n -> failwith "String2.take : chaine trop courte"
  | chaine -> String.sub chaine 0 n

let drop n = function
  | chaine when String.length chaine < n -> failwith "String2.drop : chaine trop courte"
  | chaine -> String.sub chaine n ((String.length chaine) - n)

let cons carac chaine = (String.make 1 carac) ^ chaine

let of_char = String.make 1
