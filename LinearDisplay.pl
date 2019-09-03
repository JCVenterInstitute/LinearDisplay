#!/usr/bin/env perl

use warnings;
use strict;

=pod

=head1 NAME

LinearDisplay.pl - A PERL script that generates publication quality linear genetic (e.g., open reading frame (ORF) maps) in XFig format.

=head1 LICENSE

Copy (C) 2019-2020  The J. Craig Venter Institute (JCVI).  All rights reserved
Written by various people through the years including, but not limited to,
Derrick E. Fouts, Martin Wu, John Quackenbush, Jeremy Peterson, Owen White and members of his team at TIGR.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

=head1 CITATION

The following publication used this program to generate linear illustrations of bacteriophage genomes and should be used to site this program:

Duan Y, Llorente C, Brandl K, Chu H, Jian L, Lang S, White RC, Clarke TH, Nguyen K, Torralba M, Sho Y, Liu J, Hernandez-Morales A, Lessor L, Rahman IR, Miyamoto Y, Ly M, Sun W, Kiesel R, Hutmacher F, Lee S, Ventura-Cots M, Bosques-Padilla F, Verna EC, Abraldes JG, Brown Jr RS, Vargas V, Altamirano J, Caballeria J, Shawcross DL, Ho SB, Louvet A, Lucey MR, Mathurin P, Garcia-Tsao G, Bataller R, Tu XM, Eckmann L, van der Donk WA, Young R, Lawley TD, Starkel P, Pride D, Fouts DE, Schnabl B. Bacteriophages against cytolytic Enterococcus faecalis as therapy for alcoholic liver disease. Nature. in press

The following publications also used LinearDisplay.pl to generate figures:

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

=head1 SYNOPSIS

  USAGE:  LinearDisplay.pl -A <frag file> -F <gene_att file>

=head1 OPTIONS

B<-D>            : [D]ebug

B<-i>            : display the last [i]nvocation to the user.

B<-A> filename   : fr[A]gment file [REQUIRED]
                 : (<Level><\t><Fragment_id><\t><Left_end><\t><Right_end><\t><Left_margin>)

B<-F> filename   : gene attribute (gene_att) [F]ile [REQUIRED]
                 : (<End5><\t><End3><\t><feat_name><\t><Gene_sym><\t><Locus><\t><feat_type><\t><Role><\t><Fragment_id>)
                 : Acceptable feat_types to draw include:
                 :   CLS    - cluster (used to draw clusters as circles)
                 :   ORF    - Open Reading Frame with new arrowhead -> or <-
                 :   ORFNA  - Open Reading Frame with NO arrowhead -
                 :   PROM   - promoter
                 :   PRI    - primer
                 :   PRI2   - primer2
                 :   ENZ    - restriction enzyme
                 :   ATTP   - phage attachment site (attP)
                 :   TERM   - transcriptional terminator
                 :   TSD    - Target Site Duplication
                 :   PMARK  - contig/assembly separator
                 :   REGION - for noting DNA similarities (shaded region)
                 :   rRNA   - ribosomal RNAs (must specify type 16S, 23S, 5S in feat_name)
                 :   sRNA   - structural RNAs (must specify type (tmRNA or 7S/SRP or RNaseP/rnpB in feat_name)
                 :   tRNA   - transfer RNAs

B<-P> filename   : Gene [P]airs File. Displays identity color-coded matches of genes between two fragments. [optional]
                 : (<Fragment_id1><\t><feat_name><\t><Fragment_id2><\t><feat_name><\t><%identity>)

B<-R> filename   : [R]egional matches highlights regions that match between two fragments [optional]
                 : (<Fragment_id><\t><end5><\t><end3><\t><Fragment_id><\t><end5><\t><end3><\t><%identity>)

B<-C> filename   : [C]hi-square file. Draws a Chi-square plot underneath specified fragment_ids [optional]
                 : (<# Fragment_id><\n><position><\t><chi-square value>)

B<-I>            : [I]ndependent genes. Do not display blocks, just display gene pairs individually.

B<-g>            : supply a list of [g]ene names to display

B<-p>            : [p]age test. Just displays lines only so user can quickly set up white space. 

B<-s> size       : line [s]pacing, where size is distance from each assembly displayed in pic. 

B<-f> size       : [f]ont size, where size will be size of font.

B<-L>            : use [L]ocus names if in gene_att file

B<-y>            : use gene_s[y]ms if available in gene_att file

B<-S> size       : [S]hort genes. Where genes below size cutoff will displayed as empty.

B<-T>            : [T]oggle to shorten names from BB0123 to 123

B<-M> file_name  : [M]erge in xfig file, usually a legend created by the user.

B<-m>            : [m]olecular size

B<-t>            : [t]oggle to use tRNA name

B<-nl>           : [n]o horizontal [l]ine

B<-nn>           : [n]o [n]ame.  Do not print a feat or locus name

B<-nt>           : [n]o [t]ickmarks

B<-oa>           : [o]ld [a]rrowhead stype

B<-cm> {option}  : [c]olor of [m]atches {[p]astel or [s]pectrum or [m]onochrome (eg. -cm p) [default = p]

=head1 DESCRIPTON

This program generates publication quality linear maps of user-defined genetic features (e.g., ORFs, promoters, transcriptional terminators, restriction enzyme recognition sites, primer-binding sites, phage attachment sites, target site duplications, assembly/contig breaks and RNA structures).

=head1 INPUT

Required input files consist of the fragment file and the gene attribute file. Optional input files include a pairs file, regions file, and a chi square file.

=head1 CONTACT

    Derick E. Fouts
    dfouts@jcvi.org

=cut

use FindBin qw($Bin); # Find where the executable is.
use lib "$Bin/lib";
use TIGR::Foundation;
use TIGR::DisplayFunctions;
use Math::Round qw(:all);
use Graphics::ColorObject;
require "$Bin/global_structures.ph";

############################################################
# GLOBALS these structures will be considered to be available
# to all functions and points in this program.
############################################################

my %gene = ();
my %chi = ();
my $tfobject = new TIGR::Foundation;
our $global_struct = &load_global_struct();
our ($rgb, $color_lookup) = &load_color_struct();
my $color_start = 72; # start value for spectrum
my $color_match = "";
my $total_colors = "";
my $draw_ident_key = "";
&handle_invocation(0);

my $MY_HELPTEXT = qq~

 examples:

 Fig1 dir)  ../../LinearDisplay.pl -A frag.file -F gene_att.file -nt > Fig1.fig
 Fig2 dir)  ../../LinearDisplay.pl -A frag.file -F gene_att.file -nt > Fig2.fig
 Fig3 dir)  ../../LinearDisplay.pl -A frag.file -F gene_att.file -nt > Fig3.fig

 options:

 -D [D]ebug

 -i display the last [i]nvocation to the user.

 -A fr[A]gment file [REQUIRED]

 -F gene attribute (gene_att) [F]ile [REQUIRED]

 -P Gene [P]airs File. A list of gene pairs.

 -R [R]egional matches

 -C [C]hi-square file

 -I [I]ndependent genes. Do not display blocks, just display gene pairs individually.

 -g supply a list of [g]ene names to display

 -p [p]age test. Just displays lines only so user can quickly set up white space.

 -s size. Line [s]pacing, where size is distance from each assembly displayed in pic.

 -f size. [f]ont size, where size will be size of font.

 -L use [L]ocus names from gene_att file

 -y use gene_s[y]ms from gene_att file if available

 -S size. [S]hort genes. Where genes below size cutoff will displayed as empty.

 -T [T]oggle to shorten names from BB0123 to 123

 -M file_name. [M]erge in xfig file, usually a legend created by the user.

 -m [m]olecular size

 -t [t]oggle to use tRNA name

 -nl [n]o horizontal [l]ine

 -nn [n]o [n]ame.  Do not print a feat or locus name

 -nt [n]o [t]ickmarks

 -oa [o]ld [a]rrowhead stype

 -cm {option} [c]olor of [m]atches {[p]astel or [s]pectrum or [m]onochrome (eg. -cm p) [default = p]

 Fragment file format:
 Level	Fragment_id	Left_end	Right_end	Left_margin

 Gene attribute file format:
 End5	End3	feat_name	Gene_sym	Locus	feat_type	Role	Fragment_id

   -> Acceptable feat_types to draw are:

      CLS - cluster (used to draw clusters as circles)
      ORF - Open Reading Frame with new arrowhead -> or <-
    ORFNA - Open Reading Frame with NO arrowhead -
     PROM - promoter
     PRI  - primer
     PRI2 - primer2
      ENZ - restriction enzyme
     ATTP - phage attachment site (attP)
     TERM - transcriptional terminator
      TSD - Target Site Duplication
    PMARK - contig/assembly separator
   REGION - for noting DNA similarities (shaded region)
     rRNA - ribosomal RNAs (must specify type 16S, 23S, 5S in feat_name)
     sRNA - structural RNAs (must specify type (tmRNA or 7S/SRP or RNaseP/rnpB in feat_name)
     tRNA - transfer RNAs

 Gene pair file format:
 Fragement_id	feat_name       Fragment_id	feat_name     %identity

 Regional match file format:
 Fragment_id    end5     end3     Fragment_id     end5      end3     %identity

 Chi-square file format:
 # Fragment_id
 position	chi-square
~;

$tfobject->setHelpInfo($MY_HELPTEXT);

############################################################
#               process_args
############################################################

my($fragmt_list, $pairs_list) = &process_args($tfobject);

&read_genes($global_struct,\%gene);

if ($global_struct->{'chi_file'}) {&read_chi_square($global_struct,\%chi);}

############################################################
#                         main
############################################################

if ($color_match eq "p") {$total_colors = 10; $color_start = $color_start - 7;}
elsif ($color_match eq "s") {$total_colors = 255;}

&fig_header($global_struct,$rgb,$total_colors,$color_match,$color_start) if ($fragmt_list->{'count'} > 0);

for(my $i=0;$i<$fragmt_list->{'count'};$i++) {
  printf STDERR ("DRAWING: %s\n", $fragmt_list->{$i}->{'fragmt_id'});
  &handle_level($fragmt_list->{$i},\%gene,\%chi);
}

if ($pairs_list->{'count'}) {
  print STDERR "drawing matches between levels...\n";
  &handle_links ();
  print STDERR "printing the legend...\n";
  my $line_count = $fragmt_list->{'count'}+1;
  #my $line_count = $fragmt_list->{$count+1}->{'level'};
  my $max_x = &x_transform($global_struct, 100, &create_level_struct($fragmt_list->{$line_count}));
  #my $max_x = 1;
  #my $max_y = &line2coord($global_struct, $line_count);
  my $max_y = &line2coord($global_struct, $fragmt_list->{$line_count}->{'level'});
  my $cell_width = $global_struct->{'gene_height'};
  my $x_angle = 0.0000; #1.5708
  my $y_angle = 0.0000;
  my $cell_height = $global_struct->{'gene_height'};
  my $x_pad = 1000;
  my $y_pad = 1000;
  if (($draw_ident_key) && ($color_match ne "m"))  { #if we need to draw the key
    my $n = "";
    if ($color_match eq "s")  { $n = 100;} # for full spectrum (the old way), draw 100
    else { $n = 10;} # for pastel colors, only draw 10
    for(my $i = 1; $i <= $n; $i++) { # change $n here to 9 if you want to print to 100..20%
      my $ratio = $i/$n;
      my $color = &position_to_color($ratio, $total_colors)-1;
      if ($i == 1) {
	print &text($global_struct,20,1,$y_angle,$max_x + ($cell_width * ($i+0.5)/2),$max_y + 300,"100");
	print &text($global_struct,20,2,$y_angle,$max_x + ($cell_width * ($i+0.6)/2),$max_y + 600,"|");
      }
      elsif ($i == $n) { # change $n here to 9 if you want to stop at 20%
	print &text($global_struct,20,1,$y_angle,$max_x + ($cell_width * ($i+0.5)/2),$max_y + 300,"10");
	print &text($global_struct,20,2,$y_angle,$max_x + ($cell_width * ($i+0.6)/2),$max_y + 600,"|");
      }
      print &box($global_struct->{'black'},$color,$max_x + ($i/2 * $cell_width),$max_y + 600,$cell_width/2,$cell_height,1,1);
    }
    print &text($global_struct,20,0,$y_angle,$max_x + ($cell_width * ($n+1)/2),$max_y + 300,"% identity");
  }
}

&merge_with_legend($global_struct->{'legend_file'}) if ($global_struct->{'merge_with_legend'});

exit 0;

############################################################
#                      end of main
############################################################


sub handle_links {
  for (my $i=0; $i<=$pairs_list->{'count'}; $i++) {
    &draw_gene_pairs($pairs_list->{$i}->{'fragmt_id1'},
		     $pairs_list->{$i}->{'fragmt_id2'},
		     $pairs_list->{$i}->{'name1'},
		     $pairs_list->{$i}->{'name2'},
		     $pairs_list->{$i}->{'percent_id'},
		     $pairs_list->{$i}->{'type'},
		     $pairs_list->{$i}->{'color'},
		     $color_match,
		     $color_start,
		     $total_colors,
		     \%gene,
 		     $global_struct);
  }
}

sub handle_level {
  my($fragmt_ref,$generef,$chiref) = @_;
  my($level_struct);
  my $level_rend;

  $level_struct = &create_level_struct($fragmt_ref);
  $level_rend = &draw_level($global_struct, $level_struct, $fragmt_ref);
  &draw_ticks($level_struct, $fragmt_ref) if ($global_struct->{'tickmark'});
  &draw_gene_elements($level_struct, $fragmt_ref, $global_struct, $generef, $color_lookup);
  &draw_chi_square($level_struct, $fragmt_ref, $global_struct, $chiref);
  $global_struct->{$fragmt_ref->{'level'}} = $level_rend;
}

sub create_level_struct {
  my($fragmt_ref) = shift;
  my(%level_struct);

  $level_struct{'level'} = $fragmt_ref->{'level'};
  if ($fragmt_ref->{'lend'} < $fragmt_ref->{'rend'}) {
    $level_struct{'x_decrement'} = $fragmt_ref->{'lend'};
    $level_struct{'orientation'} = $global_struct->{'forward'};
    $level_struct{'width'} = $fragmt_ref->{'rend'} - $fragmt_ref->{'lend'};
  }
  else {
    $level_struct{'x_decrement'} = $fragmt_ref->{'rend'};
    $level_struct{'orientation'} = $global_struct->{'reverse'};
    $level_struct{'width'} = $fragmt_ref->{'lend'} - $fragmt_ref->{'rend'};
  }

  $level_struct{'lmargin'} = $fragmt_ref->{'lmargin'};

  return(\%level_struct);
}

sub merge_with_legend {
  my($f) = shift;
  my($count);

  # very simple minded approach. this function just pulls up the file and
  #  adds it into the end of the stdout stream. the one thing it does is
  #  strip out all new color calls, and operates under the ASSUMPTION
  #  that the color definitions between the legend and the big pic are
  #  the same. the problem is that xfig doesnt like merging two files
  #  have color definitions in them, and will just create more color
  #  definitions.

  print STDERR "MERGING: $f\n";

  open(LEGEND, $f) || die "hey, file: $f doesnt exist";
  $count = 0;
  while(<LEGEND>) {
    if(/0\s.*\#/) {
      # dont print these lines
    }
    elsif($count < 9) {
      # dont print these lines, these are the header.
      # a STUPID way to do this, but...
    }
    else {
      print;
    }
    $count++;
  }
  close(LEGEND);
}

sub process_args {
  my %fragmt_list;
  my %pairs_list;
  my ($opt_A, $opt_F, $opt_I, $opt_D, $opt_x, $opt_P, $opt_C);
  my ($opt_L, $opt_M, $opt_S, $opt_T, $opt_f, $opt_g);
  my ($opt_l, $opt_m, $opt_o, $opt_p, $opt_s, $opt_t, $opt_y);
  my ($opt_nl, $opt_nn, $opt_nt, $opt_oa, $opt_cm, $opt_R);

  $tfobject->TIGR_GetOptions('-A:s' , \$opt_A,
			     '-F:s' , \$opt_F,
			     '-D'   , \$opt_D,
			     '-L'   , \$opt_L,
			     '-M:s' , \$opt_M,
			     '-P:s' , \$opt_P,
			     '-C:s' , \$opt_C,
			     '-S:s' , \$opt_S,
			     '-I'   , \$opt_I,
			     '-T'   , \$opt_T,
			     '-f:s' , \$opt_f,
			     '-g:s' , \$opt_g,
			     '-l:s' , \$opt_l,
			     '-m:s' , \$opt_m,
			     '-o:s' , \$opt_o,
			     '-p'   , \$opt_p,
			     '-s:s' , \$opt_s,
			     '-t:s' , \$opt_t,
			     '-x'   , \$opt_x,
			     '-y'   , \$opt_y,
			     '-nl'  , \$opt_nl,
			     '-nn'  , \$opt_nn,
			     '-nt'  , \$opt_nt,
			     '-oa'  , \$opt_oa,
			     '-cm:s', \$opt_cm,
			     '-R:s' , \$opt_R);

  if ($opt_I) {
    $global_struct->{'block_toggle'} = 0;
  }

  if ($opt_D) {
    $global_struct->{'debug'} = 1;
  }

  if ($opt_x) {
    $global_struct->{'xml_toggle'} = 1;
  }

  if ($opt_g) {
    # this is a way of displaying only a selected set of genes.
    open(F_IN,"$opt_g") || usage("oof. cant open $opt_g");
    while(<F_IN>) {
      s/\n//;
      $global_struct->{'selected_genes'}->{$_} = 1;
    }
    close(F_IN);
    $global_struct->{'select_genes_toggle'} = 1;
  }

  if ($opt_cm)  {
    $color_match = $opt_cm;
  }
  else {
    $color_match = "p"; # default for drawing gene pairs
  }

  if ($opt_P) {
    my ($count) = 0;

    open(F_IN,"$opt_P") || usage("oof. cant open $opt_P");
    while(<F_IN>) {
      chomp;
      my @l = split /\t+/;
      $pairs_list{$count}->{'type'} = "pairs";
      $pairs_list{$count}->{'fragmt_id1'} = $l[0];
      $pairs_list{$count}->{'name1'} = $l[1];
      $pairs_list{$count}->{'fragmt_id2'} = $l[2];
      $pairs_list{$count}->{'name2'} = $l[3];

      # Added by Derrick E. Fouts 7/3/2003 to enable different colored gene pairs depending on BLAST % identity
      if ($#l > 3)  {
	$pairs_list{$count}->{'percent_id'} = round($l[4]);  # record the percent identity
      }
      if ($color_match eq "m") { # to set all gene matches to Herve's USER 55 grey color
	$pairs_list{$count}->{'color'} = $global_struct->{'monogene'};
      }
      else {
	$pairs_list{$count}->{'color'} = "";
      }
      $count++;
    }
    close(F_IN);
    $pairs_list{'count'} = $count;
    $draw_ident_key = 1;
  }

  if ($opt_R) { # to handle regional matches from grasta, blast or mummer data [dfouts 04/11/05]

    my $frag1 = "";
    my $frag2 = "";
    my $name1 = "";
    my $name2 = "";
    my $count = "";
    my $keycount = keys %pairs_list; # check to see if we also have gene pairs

    if ($keycount > 0)  {
      $count = $keycount + 1; # start numbering after the last pair
    }
    else {
      $count = 0;
    }
    open(F_IN,"$opt_R") || usage("oof. cant open $opt_R");
    while(<F_IN>) {
      chomp;
      my @l = split /\t+/;
      $frag1 = $l[0];
      $name1 = "region\_$frag1\_$count";
      $pairs_list{$count}->{'fragmt_id1'} = $frag1;
      $pairs_list{$count}->{'name1'} = $name1;
      $gene{$frag1}{$name1}{'end5'} = $l[1];
      $gene{$frag1}{$name1}{'type'} = "REGION";
      $gene{$frag1}{$name1}{'end3'} = $l[2];

      $frag2 = $l[3];

      $name2 = "region\_$frag2\_$count";
      $pairs_list{$count}->{'fragmt_id2'} = $frag2;
      $pairs_list{$count}->{'name2'} = $name2;
      $gene{$frag2}{$name2}{'end5'} = $l[4];
      $gene{$frag2}{$name2}{'type'} = "REGION";
      $gene{$frag2}{$name2}{'end3'} = $l[5];

      if ($#l > 5)  {
	$pairs_list{$count}->{'percent_id'} = round($l[6]);  # record the percent identity
      }
      if ((length($opt_P) > 0) || ($color_match eq "m")) { # if either gene pairs or monochrome make cornsilk
	$pairs_list{$count}->{'color'} = $global_struct->{'regions'};
      }
      else {
	$pairs_list{$count}->{'color'} = "";
      }
      $count++;
    }
    close(F_IN);

    $pairs_list{'count'} = $count;
    if ($color_match eq "m") {
      $draw_ident_key = 0;
    }
    else {
      $draw_ident_key = 1;
    }
  }

  if(length($opt_A) > 0) {
    my ($count) = 0;
    my $maxlevel = 0;

    open(F_IN,"$opt_A") || usage("oof. cant open $opt_A");
    while(<F_IN>) {
      chomp;
      my @l = split /\t+/;
      $fragmt_list{$count}->{'level'} = $l[0];
      $fragmt_list{$count}->{'fragmt_id'} = $l[1];
      $fragmt_list{$count}->{'lend'} = $l[2];
      $fragmt_list{$count}->{'rend'} = $l[3];
      if ($fragmt_list{$count}->{'level'} > $maxlevel)  {  # dfouts
	$maxlevel = $fragmt_list{$count}->{'level'}
      }
      if ($l[4]) {
	$fragmt_list{$count}->{'lmargin'} = $l[4];
      }
      else {
	$fragmt_list{$count}->{'lmargin'} = 0;
      }
      $count++;
    }
    close(F_IN);

    $fragmt_list{'count'} = $count;
    # set structure for the pairs color key
    $fragmt_list{$count+1}->{'level'} = $maxlevel+1;
    $fragmt_list{$count+1}->{'fragmt_id'} = "legend";
    $fragmt_list{$count+1}->{'lend'} = 1;
    $fragmt_list{$count+1}->{'rend'} = 1000;
    $fragmt_list{$count+1}->{'lmargin'} = 0;
  }
  else {
    usage("Hey: must supply -A an assembly file");
  }
  if ($opt_F) {
    $global_struct->{'gene_file'} = $opt_F;
  }
  else {
    usage("Hey: must supply -F gene attribute file");
  }
  if ($opt_C) {
    $global_struct->{'chi_file'} = $opt_C;
  }
  if ($opt_L and $opt_l) {
    usage("cant specify -l (lookup table) and -L (use ident table loci)");
  }
  if ($opt_l) {
    # this is a way of displaying new names for genes
    $global_struct->{'gene_lookup_toggle'} = 1;
    open(F_IN,"$opt_l") || usage("oof. cant open $opt_l");
    while(<F_IN>) {
      chop;
      my @l = split(/\s/);
      $global_struct->{'lookup_table'}->{$l[0]} = $l[1];
    }
    close(F_IN);
  }
  if ($opt_L) {
    # this gets gene names from the ident.locus field
    $global_struct->{'locus_toggle'} = 1;
  }
  if ($opt_y) {
    # this gets gene_syms from ident
    $global_struct->{'gene_sym_toggle'} = 1;
  }
  if ($opt_p) {
    $global_struct->{'page_test_toggle'} = 1;
  }
  if ($opt_t) {
    $global_struct->{'trna_name_toggle'} = 1;
  }
  if ($opt_T) {
    $global_struct->{'truncate_name_toggle'} = 1;
  }
  if ($opt_S) {
    $global_struct->{'short_gene_toggle'} = 1;
    $global_struct->{'short_gene_cutoff'} = $opt_S;
  }
  if ($opt_s) {
    $global_struct->{'line_spacing'} = $opt_s;
  }
  if ($opt_f) {
    $global_struct->{'point_size'} = $opt_f;

    $global_struct->{'label_height'} 
      = ($global_struct->{'label_height'} * $global_struct->{'point_size'}) / $global_struct->{'point_size'};

    $global_struct->{'char_width'}  #huh?
      = ($global_struct->{'char_width'} * $global_struct->{'point_size'}) / $global_struct->{'point_size'};

  }
  $global_struct->{'object_spacing'} = $opt_o;
  $global_struct->{'size_supplied_by_user'} = 0;

  if ($opt_m) {
    $global_struct->{'molecule_size'} = $opt_m;
    $global_struct->{'size_supplied_by_user'} = 1;
  }

  $global_struct->{'merge_with_legend'} = 0;

  if ($opt_M) {
    $global_struct->{'legend_file'} = $opt_M;
    $global_struct->{'merge_with_legend'} = 1;
  }

  $global_struct->{'horizontal line'} = 1;

  if ($opt_nl) {
    $global_struct->{'horizontal line'} = 0;
  }

  $global_struct->{'tickmark'} = 1;

  if ($opt_nn) {
    $global_struct->{'no_names'} = 1;
    print STDERR "No names selected\n";
  }
  else {
    $global_struct->{'no_names'} = 0;
  }

  if ($opt_nt) {
    $global_struct->{'tickmark'} = 0;
  }

  $global_struct->{'arrowstyle'} = 1; # 1 is the new style [DEFAULT]

  if ($opt_oa) {
    $global_struct->{'arrowstyle'} = 0;
  }
  return(\%fragmt_list,\%pairs_list);
}


sub usage {
  my $str = shift;

  print STDERR "$str\n" if (length($str) > 0);
  $tfobject->printHelpInfoAndExit();
  exit(1);
}


