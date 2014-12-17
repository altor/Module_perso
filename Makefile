
OUT=mp.cma mp_toplevel
MLI=array_mp.mli fonction.mli list_mp.mli string_mp.mli matrix.mli math.mli hash.mli
CMO=array_mp.cmo fonction.cmo list_mp.cmo string_mp.cmo monade.cmo monade_pack.cmo monoide.cmo monoide_pack.cmo matrix.cmo math.cmo hash.cmo

main: ${CMO}
	ocamlc -a -o mp.cma ${CMO}

top: ${CMO}
	ocamlmktop -o mp_toplevel ${CMO}


monade_pack.cmo: monade.cmo monoide.cmo
	ocamlc -c monade_pack.ml
monade.cmo:
	ocamlc -c monade.ml
monoide.cmo:
	ocamlc -c monoide.ml
monoide_pack.cmo: monoide.cmo
	ocamlc -c monoide_pack.ml

%.cmo: %.ml %.mli
	ocamlc -c $*.mli
	ocamlc -c $*.ml

doc: ${MLI}
	ocamldoc -d Doc -html -charset utf8 ${MLI}

clean_obj:
	rm -f *.cmo
	rm -f *.cmi

clean_out:
	rm -f $(OUT)

clean_doc:
	rm -Rf ./Doc



clean: clean_doc clean_out clean_obj
	rm -f *~

