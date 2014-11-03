all: option string array fonction monade
	ocamlc -a -o mp.cma option.cmo string2.cmo array2.cmo fonction.cmo monade.cmo
option: option.mli option.ml
	ocamlc -c option.mli
	ocamlc -c option.ml	

fonction: fonction.mli fonction.ml
	ocamlc -c fonction.mli
	ocamlc -c fonction.ml	

string: string2.mli string2.ml
	ocamlc -c string.mli
	ocamlc -c string.ml

array: array2.mli array2.ml
	ocamlc -c array.mli
	ocamlc -c array.ml

monade: fonction monade.ml
	ocamlc -c monade.ml
list: list.ml list.mli
	ocamlc -c list.mli
	ocamlc -c list.ml

doc: option.mli string.mli array.mli fonction.mli
	ocamldoc -d Doc -html -charset utf8 option.mli string.mli array.mli fonction.mli list.mli

clean_doc:
	rm Doc/*
clean: 
	rm *.cm*
	rm *~
