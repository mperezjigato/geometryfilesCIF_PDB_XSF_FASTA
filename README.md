# geometryfilesCIF_PDB_XSF_FASTA
## All the atomic geometries plotted within the weekly reports have been enclosed in one of the following formats: CIF, PDB, FASTA, XSF
### The different systems are listed next.

1. c-HfO2 - LAMMPS example system (within the distribution), located in the directory `examples/comb`
   - The LAMMPS geometry input file "data.c-HfO2" is first run with `atomsk` in order to convert it to a CIF file: It failed!
   - LAMMPS is (MPI) run under the "dump" directive within the in.comb.HfO2, in order to produce an "xyz" geometry file
   - The "xyz" file is converted to the CIF format by means of the `atomsk` software (supercell of 1500 atoms)
   - The CIF file is sanitised using the cryst.ehu.es website: passed!
   - The same CIF file is run with the FINDSYM software in order to determine its spacegroup (). FINDSYM then generates a new supercell, but a    
     hexagonal one this time.
1. ZFHX4 - "template" geometry from the AlphaFold-EBI protein database
