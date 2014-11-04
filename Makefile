top: monoide monade
	ocamlmktop -o test monoide.cmo monoide_pack.cmo monade.cmo monade_pack.cmo

monade: monoide
	ocamlc -c monade.ml
	ocamlc -c monade_pack.ml
monoide:
	ocamlc -c monoide.ml
	ocamlc -c monoide_pack.ml
