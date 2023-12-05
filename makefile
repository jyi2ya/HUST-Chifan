all:
	perl generate.pl | cat - chifan.pl.in > chifan.pl
