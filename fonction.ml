let comp f g x = f (g x)

let (|-) f g = comp f g

let ($) f g = f g

let id x = x

let couple x y = (x,y)
