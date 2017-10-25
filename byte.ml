type t

let set byte i b =
  if b = 1
  then byte lor (1 lsl i)
  else byte land (lnot(1 lsl i))

let get byte i =
  ((0 lor (1 lsl i)) land byte) lsr i
		   
let char_of_byte byte =
  let b = 255 land byte
  in char_of_int b
