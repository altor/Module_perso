all: option string2 array2 fonction monade
	ocamlc -a -o mp.cma option.cmo string2.cmo array2.cmo fonction.cmo monade.cmo
option: option.mli option.ml
	ocamlc -c option.mli
	ocamlc -c option.ml	

fonction: fonction.mli fonction.ml
	ocamlc -c fonction.mli
	ocamlc -c fonction.ml	

string2: string2.mli string2.ml
	ocamlc -c string2.mli
	ocamlc -c string2.ml

array2: array2.mli array2.ml
	ocamlc -c array2.mli
	ocamlc -c array2.ml

monade: fonction monade.ml
	ocamlc -c monade.ml

doc: option.mli string2.mli array2.mli fonction.mli
	ocamldoc -d Doc -html -charset utf8 option.mli string2.mli array2.mli fonction.mli

clean_doc:
	rm Doc/*
clean: 
	rm *.cm*
	rm *~
