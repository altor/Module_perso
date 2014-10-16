all: option string2 array2

option: option.mli option.ml
	ocamlc -c option.mli
	ocamlc -c option.ml	

string2: string2.mli string2.ml
	ocamlc -c string2.mli
	ocamlc -c string2.ml

array2: array2.mli array2.ml
	ocamlc -c array2.mli
	ocamlc -c array2.ml

doc: option.mli string2.mli array2.mli
	ocamldoc -d Doc -html -charset utf8 option.mli string2.mli array2.mli

clean_doc:
	rm Doc/*
clean: 
	rm *.cm*
	rm *~
