This code is to show how to generate the inverse lookup list based on UC_SimList0.8.txt  (http://essay.utwente.nl/79263/1/Yazdani_MA_EEMCS.pdf)
Similarity of Unicode Glyphs to ASCII glyphs is based on a Deep Convolutional Neural network that measures their degree of similarity. Here we classify as "similar to" if more than 80% visual similarity is found.
Note that there are different Unicode characters with 100% degree of similarity, for example a Turkish 'A' is exactly an ASCII 'A' but with different Hex codes. Those are used in PUNYCODE domains to do phishing.


The structure of the output CSV list is:

Unicode , Similar_To (ASCII equivalent) ,  Similar_To_unicode (Unicode in hex of previous col),  Degree of similarity


The idea is to use this list to find equivalent ASCII wording from  unicode to prevent homoglyphs attacks. Note that the first column value can be repeated since it might be similar to other things, for example the letter 'O' is similar to 'Q' but also to 'o'. So, it will be your choice to take maybe the one with bigger "degree of similarity" (last column).


Just run

$ ./generate_inverse_lookup_simlist08.sh

Eduardo Ruiz Duarte

toorandom@gmail.com
