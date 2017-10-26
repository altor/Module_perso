type t = int
let zero = 0
       
let set byte i b =
  if b = 1
  then byte lor (1 lsl i)
  else byte land (lnot(1 lsl i))

let get byte i =
  ((0 lor (1 lsl i)) land byte) lsr i
		   
let char_of_byte byte =
  let b = 255 land byte
  in char_of_int b

let of_char byte =
  int_of_char byte

let of_int byte = byte

let to_int byte = byte land 255
