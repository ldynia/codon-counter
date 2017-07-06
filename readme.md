# Codon Counter
This application is a simple program that counts number of codons in a **\*.fsa** file. The application is written in [python](https://www.python.org/) and deployed with [docker](https://docker.com/).

Goal of this project is to demonstrate how to build an application/service that will run as a standalone program, as well as a component of a pipeline.


**Create application's container**
Using `docekr-compose` create running container.
```
$ docker-compose up -d
```

**Test application**
Run application's test.

```
$ docker exec codon_1.0 python test/test.py
----------------------------------------------------------------------
Ran 1 test in 0.001s

OK
```

**Run application**
Run program.
```
$ docker exec codon_1.0 cdncounter data/dna.fsa
{"CTT": 7, "ATG": 2, "ACA": 7, "ACG": 3, "ATC": 3, "AAC": 1, "ATA": 3, "AGG": 11, "CCT": 20, "ACT": 5, "AGC": 10, "AAG": 8, "AGA": 10, "CAT": 14, "AAT": 2, "ATT": 3, "CTG": 11, "CTA": 7, "CTC": 9, "CAC": 9, "AAA": 8, "CCG": 8, "AGT": 4, "CCA": 23, "CAA": 15, "CCC": 14, "TAT": 3, "GGT": 10, "TGT": 9, "CGA": 3, "CAG": 11, "TCT": 7, "GAT": 6, "CGG": 5, "TTT": 8, "TGC": 12, "GGG": 21, "TAG": 3, "GGA": 20, "TGG": 14, "GGC": 20, "TAC": 3, "TTC": 6, "TCG": 7, "TTA": 5, "TTG": 2, "TCC": 5, "ACC": 7, "TCA": 9, "GCA": 12, "GTA": 3, "GCC": 12, "GTC": 3, "GCG": 12, "GTG": 9, "GAG": 10, "GTT": 1, "GCT": 15, "TGA": 8, "GAC": 6, "CGT": 4, "GAA": 5, "TAA": 2, "CGC": 4}
```
