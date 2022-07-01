all.pdf: f-sin.dat f-cos.dat f-cosm.dat
	if test -e "all.pdf"; then\
		cp -f all.pdf ../backup;\
	fi
	gnuplot "all2pdf.gpl"

f-sin.dat: f-sin.exe
	rm -f f-sin.dat
	./f-sin.exe > f-sin.dat

f-cos.dat: f-cos.exe
	rm -f f-cos.dat
	./f-cos.exe > f-cos.dat

f-cosm.dat: f-cos.dat
	rm -f f-cosm.dat
	cat f-cos.dat | awk -e '{print $$1, -$$2}' > f-cosm.dat

f-sin.exe: f-sin.c
	gcc f-sin.c -lm -o f-sin.exe

f-cos.exe: f-cos.c
	gcc f-cos.c -lm -o f-cos.exe