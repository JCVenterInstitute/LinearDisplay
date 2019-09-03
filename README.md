# LinearDisplay
LinearDisplay is a program that generates publication quality linear maps of user-defined genetic features (e.g., ORFs, promoters, transcriptional terminators, restriction enzyme recognition sites, primer-binding sites, phage attachment sites, target site duplications, assembly/contig breaks and RNA structures).

## Examples

Included in this distribution are input and output files that were used to generate three figures in Duan et. al. (see Citation). 

Finally, I have included a list of all four commands with $DIR as the git root directory:

To run LinearDisplay example datasets, cd into the desired directory (e.g., Fig1, Fig2 or Fig3) and run the following command(s):


1. Makes the .fig file
 * ../../LinearDisplay.pl -A frag.file -F gene_att.file -nt > Fig1.fig

2. Convert to .pdf
 * fig2dev -L pdf Fig1.fig Fig1.pdf

## Usage

**LinearDisplay.pl -A <frag file> -F <gene_att file>**

	LinearDisplay.pl [options]
	Options:
		-D		: [D]ebug

		-i		: display the last [i]nvocation to the user.

		-A filename	: fr[A]gment file [REQUIRED]
				: (<Level><\t><Fragment_id><\t><Left_end><\t><Right_end><\t><Left_margin>)

		-F filename	: gene attribute (gene_att) [F]ile [REQUIRED]
				: (<End5><\t><End3><\t><feat_name><\t><Gene_sym><\t><Locus><\t><feat_type><\t><Role><\t><Fragment_id>)
				: Acceptable feat_types to draw include:
					CLS	- cluster (used to draw clusters as circles)
					ORF	- Open Reading Frame with new arrowhead -> or <-
					ORFNA	- Open Reading Frame with NO arrowhead -
					PROM	- promoter
					PRI	- primer
					PRI2	- primer2
					ENZ	- restriction enzyme
					ATTP	- phage attachment site (attP)
					TERM	- transcriptional terminator
					TSD	- Target Site Duplication
					PMARK	- contig/assembly separator
					REGION	- for noting DNA similarities (shaded region)
					rRNA	- ribosomal RNAs (must specify type 16S, 23S, 5S in feat_name)
					sRNA	- structural RNAs (must specify type (tmRNA or 7S/SRP or RNaseP/rnpB in feat_name)
					tRNA	- transfer RNAs

		-P filename	: Gene [P]airs File. Displays identity color-coded matches of genes between two fragments. [optional]
				: (<Fragment_id1><\t><feat_name><\t><Fragment_id2><\t><feat_name><\t><%identity>)

		-R filename	: [R]egional matches highlights regions that match between two fragments [optional]
				: (<Fragment_id><\t><end5><\t><end3><\t><Fragment_id><\t><end5><\t><end3><\t><%identity>)

		-C filename	: [C]hi-square file. Draws a Chi-square plot underneath specified fragment_ids [optional]
				: (<# Fragment_id><\n><position><\t><chi-square value>)

		-I		: [I]ndependent genes. Do not display blocks, just display gene pairs individually.

		-g		: supply a list of [g]ene names to display

		-p		: [p]age test. Just displays lines only so user can quickly set up white space. 

		-s size		: line [s]pacing, where size is distance from each assembly displayed in pic. 

		-f size		: [f]ont size, where size will be size of font.

		-L		: use [L]ocus names if in gene_att file

		-y		: use gene_s[y]ms if available in gene_att file

		-S size		: [S]hort genes. Where genes below size cutoff will displayed as empty.

		-T		: [T]oggle to shorten names from BB0123 to 123

		-M file_name	: [M]erge in xfig file, usually a legend created by the user.

		-m		: [m]olecular size

		-t		: [t]oggle to use tRNA name

		-nl		: [n]o horizontal [l]ine

		-nn		: [n]o [n]ame.  Do not print a feat or locus name

		-nt		: [n]o [t]ickmarks

		-oa		: [o]ld [a]rrowhead stype

		-cm {option}	: [c]olor of [m]atches {[p]astel or [s]pectrum or [m]onochrome (eg. -cm p) [default = p]

## Included Files

### LinearDisplay.pl
PDF manual including screen shots and usage guides for both the command line and the web
interface for PanACEA

### DisplayFunctions.pm
Shell script to run the scripts required to build the PanACEA web pages for the example data

### Foundation.pm
Directory containing the example PanACEA data derived from the PanOCT run on the 19 Acinetobacter genomes:

### global_structures.ph
Compressed file containing the multi-file output of the PanACEA run on Enterobactor cited in Chan et al 2016.

### examples_dir
Compressed file containing the multi-file output of the PanACEA run on Acinetobacter genomes in the example files

## Dependencies

**The following is a list of required Perl modules used by LinearDisplay.pl:**

	FindBin			: Available from https://metacpan.org/pod/FindBin
	Math::Round		: Available from https://metacpan.org/pod/Math::Round
	Graphics::ColorObject	: Available from https://metacpan.org/pod/Graphics::ColorObject
	TIGR::Foundation	: Included in this distribution
	TIGR::DisplayFunctions	: Included in this distribution
	global_structures.ph	: Included in this distribution

## Citation

The following publication used this program to generate linear illustrations of bacteriophage genomes and should be used to site this program:

Duan Y, Llorente C, Brandl K, Chu H, Jian L, Lang S, White RC, Clarke TH, Nguyen K, Torralba M, Sho Y, Liu J, Hernandez-Morales A, Lessor L, Rahman IR, Miyamoto Y, Ly M, Sun W, Kiesel R, Hutmacher F, Lee S, Ventura-Cots M, Bosques-Padilla F, Verna EC, Abraldes JG, Brown Jr RS, Vargas V, Altamirano J, Caballeria J, Shawcross DL, Ho SB, Louvet A, Lucey MR, Mathurin P, Garcia-Tsao G, Bataller R, Tu XM, Eckmann L, van der Donk WA, Young R, Lawley TD, Starkel P, Pride D, Fouts DE, Schnabl B. Bacteriophages against cytolytic Enterococcus faecalis as therapy for alcoholic liver disease. Nature. in press

**The following publications also used LinearDisplay.pl to generate figures:**

	1) Figure 5 in Chavda KD, Chen L, Fouts DE, Sutton G, Brinkac L, Jenkins SG, Bonomo RA, Adams MD, Kreiswirth BN. Comprehensive Genome Analysis of Carbapenemase-Producing Enterobacter spp.: New Insights into Phylogeny, Population Structure, and Resistance Mechanisms. MBio. 2016;7(6). PubMed PMID: 27965456; PMCID: PMC5156309.

	2) Figure 5 in Fouts DE, Matthias MA, Adhikarla H, Adler B, Amorim-Santos L, Berg DE, Bulach D, Buschiazzo A, Chang YF, Galloway RL, Haake DA, Haft DH, Hartskeerl R, Ko AI, Levett PN, Matsunaga J, Mechaly AE, Monk JM, Nascimento AL, Nelson KE, Palsson B, Peacock SJ, Picardeau M, Ricaldi JN, Thaipandungpanit J, Wunder EA, Jr., Yang XF, Zhang JJ, Vinetz JM. What Makes a Bacterial Species Pathogenic?:Comparative Genomic Analysis of the Genus Leptospira. PLoS Negl Trop Dis. 2016;10(2):e0004403. Epub 2016/02/20. PubMed PMID: 26890609; PMCID: PMC4758666.

	3) Figure 3 in Klumpp J, Schmuki M, Sozhamannan S, Beyer W, Fouts DE, Bernbach V, Calendar R, Loessner MJ. The odd one out: Bacillus ACT bacteriophage CP-51 exhibits unusual properties compared to related Spounavirinae W.Ph. and Bastille. Virology. 2014;462-463C:299-308. Epub 2014/07/11. PubMed PMID: 25010479.

	4) Figure 4 in Fouts DE, Klumpp J, Bishop-Lilly KA, Rajavel M, Willner KM, Butani A, Henry M, Biswas B, Li M, Albert MJ, Loessner MJ, Calendar R, Sozhamannan S. Whole genome sequencing and comparative genomic analyses of two Vibrio cholerae O139 Bengal-specific Podoviruses to other N4-like phages reveal extensive genetic diversity. Virol J. 2013;10:165. Epub 2013/05/30. PubMed PMID: 23714204; PMCID: 3670811.

	5) Figures 1 and 2 in Ricaldi JN, Fouts DE, Selengut JD, Harkins DM, Patra KP, Moreno A, Lehmann JS, Purushe J, Sanka R, Torres M, Webster NJ, Vinetz JM, Matthias MA. Whole Genome Analysis of Leptospira licerasiae Provides Insight into Leptospiral Evolution and Pathogenicity. PLoS Neglect Trop D. 2012;6(10):e1853. Epub 2012/11/13. doi: 10.1371/journal.pntd.0001853. PubMed PMID: 23145189; PMCID: 3493377.

	6) Figure 2 in Seal BS, Fouts DE, Simmons M, Garrish JK, Kuntz RL, Woolsey R, Schegg KM, Kropinski AM, Ackermann HW, Siragusa GR. Clostridium perfringens Bacteriophages ΦCP39O and ΦCP26F: Genomic Organization and Proteomic Analysis of the Virions. Arch Virol. 2011;156(1):25-35. Epub 2010/10/22. PubMed PMID: 20963614.

	7) Figure 2 in Chen Y, Stine OC, Badger JH, Gil AI, Nair GB, Nishibuchi M, Fouts DE. Comparative Genomic Analysis of Vibrio parahaemolyticus: Serotype Conversion and Virulence. BMC Genomics. 2011;12:294. Epub 2011/06/08. PubMed PMID: 21645368; PMCID: 3130711.

	8) Figure S1 in Fouts DE, Tyler HL, DeBoy RT, Daugherty S, Ren Q, Badger JH, Durkin AS, Huot H, Shrivastava S, Kothari S, Dodson RJ, Mohamoud Y, Khouri H, Roesch LF, Krogfelt KA, Struve C, Triplett EW, Methe BA. Complete Genome Sequence of the N2-Fixing Broad Host Range Endophyte Klebsiella pneumoniae 342 and Virulence Predictions Verified in Mice. PLoS Genet. 2008;4(7):e1000141. PMCID: PMC2453333. PubMed PMID: 18654632; PMCID: 2453333.

	9) Figure 1 in Fouts DE, Rasko DA, Cer RZ, Jiang L, Fedorova NB, Shvartsbeyn A, Vamathevan JJ, Tallon L, Althoff R, Arbogast TS, Fadrosh DW, Read TD, Gill SR. Sequencing Bacillus anthracis Typing Phages Gamma and Cherry Reveals a Common Ancestry. J Bacteriol. 2006;188(9):3402-8. PubMed PMID: 16621835; PMCID: 1447464.

	10) Figure 3 in Dunning Hotopp JC, Grifantini R, Kumar N, Tzeng YL, Fouts D, Frigimelica E, Draghi M, Giuliani MM, Rappuoli R, Stephens DS, Grandi G, Tettelin H. Comparative genomics of Neisseria meningitidis: core genome, islands of horizontal transfer and pathogen-specific genes. Microbiology. 2006;152(Pt 12):3733-49. Epub 2006/12/13. PubMed PMID: 17159225.

	11) Figures 2, S1 and S2 in Gill SR, Fouts DE, Archer GL, Mongodin EF, Deboy RT, Ravel J, Paulsen IT, Kolonay JF, Brinkac L, Beanan M, Dodson RJ, Daugherty SC, Madupu R, Angiuoli SV, Durkin AS, Haft DH, Vamathevan J, Khouri H, Utterback T, Lee C, Dimitrov G, Jiang L, Qin H, Weidman J, Tran K, Kang K, Hance IR, Nelson KE, Fraser CM. Insights on evolution of virulence and resistance from the complete genome analysis of an early methicillin-resistant Staphylococcus aureus strain and a biofilm-producing methicillin-resistant Staphylococcus epidermidis strain. J Bacteriol. 2005;187(7):2426-38. PubMed PMID: 15774886; PMCID: 1065214.

	12) Figure 3 in Fouts DE, Mongodin EF, Mandrell RE, Miller WG, Rasko DA, Ravel J, Brinkac LM, DeBoy RT, Parker CT, Daugherty SC, Dodson RJ, Durkin AS, Madupu R, Sullivan SA, Shetty JU, Ayodeji MA, Shvartsbeyn A, Schatz MC, Badger JH, Fraser CM, Nelson KE. Major Structural Differences and Novel Potential Virulence Mechanisms from the Genomes of Multiple Campylobacter Species. PLoS Biol. 2005;3(1):e15. PubMed PMID: 15660156; PMCID: 539331.

	13) Figures 2 and 3 in Nelson KE, Fouts DE, Mongodin EF, Ravel J, DeBoy RT, Kolonay JF, Rasko DA, Angiuoli SV, Gill SR, Paulsen IT, Peterson J, White O, Nelson WC, Nierman W, Beanan MJ, Brinkac LM, Daugherty SC, Dodson RJ, Durkin AS, Madupu R, Haft DH, Selengut J, Van Aken S, Khouri H, Fedorova N, Forberger H, Tran B, Kathariou S, Wonderling LD, Uhlich GA, Bayles DO, Luchansky JB, Fraser CM. Whole genome comparisons of serotype 4b and 1/2a strains of the food-borne pathogen Listeria monocytogenes reveal new insights into the core genome components of this species. Nucleic Acids Res. 2004;32(8):2386-95. PubMed PMID: 15115801; PMCID: 419451.

	14) Figure 1 in Fouts DE. Bacteriophage Bioinformatics. In: Fraser CM, Read TD, Nelson KE, editors. Microbial Genomes. Totowa, NJ: Humana Press Inc.; 2004. p. 71-91.

## Contact
Derick E. Fouts
dfouts@jcvi.org
