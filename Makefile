all: option string_mp array_mp fonction monade
	ocamlc -a -o mp.cma option.cmo string_mp.cmo array_mp.cmo fonction.cmo monade.cmo
option: option.mli option.ml
	ocamlc -c option.mli
	ocamlc -c option.ml	

fonction: fonction.mli fonction.ml
	ocamlc -c fonction.mli
	ocamlc -c fonction.ml	

string_mp: string_mp.mli string_mp.ml
	ocamlc -c string_mp.mli
	ocamlc -c string_mp.ml

array_mp: array_mp.mli array_mp.ml
	ocamlc -c array_mp.mli
	ocamlc -c array_mp.ml

monade: fonction monade.ml
	ocamlc -c monade.ml
list: list.ml list.mli
	ocamlc -c list.mli
	ocamlc -c list.ml

doc: option.mli string_mp.mli array_mp.mli fonction.mli
	ocamldoc -d Doc -html -charset utf8 option.mli string_mp.mli array_mp.mli fonction.mli list.mli

clean_doc:
	rm Doc/*
clean: 
	rm *.cm*
	rm *~
