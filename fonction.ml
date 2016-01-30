let comp f g x = f (g x)

let inv f x y = f y x

let (--) f = inv f		  
		   
let (|-) f g = comp f g


		    
let ($) f g = f g

let id x = x

let couple x y = (x,y)
