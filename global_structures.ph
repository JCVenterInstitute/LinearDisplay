sub load_color_struct {
    my %rgb;
    my %color_lookup;

    $rgb{33} = "0066FF"; # blue (old = 0000ff)
    $rgb{34} = "87ceff"; # lt blue
    $rgb{35} = "a0fc8d"; # lt green
    $rgb{36} = "ff0000"; # red
    $rgb{37} = "8e0000"; # brown
    $rgb{38} = "aaaaaa"; # lt gray
    $rgb{39} = "347235"; # dk green
    $rgb{40} = "ff00ff"; # magenta
    $rgb{41} = "ffa0a0"; # salmon
    $rgb{42} = "ff8102"; # orange
    $rgb{43} = "99c517"; # olive
    $rgb{44} = "fdd017"; # gold
    $rgb{45} = "666666"; # gray
    $rgb{46} = "ffbaff"; # pink
    $rgb{47} = "008e8e"; # blue green
    $rgb{48} = "8d38c9"; # violet
    $rgb{49} = "ede275"; # lt brown
    $rgb{50} = "000000"; # black
    $rgb{51} = "ffffff"; # diagonal lines
    $rgb{52} = "d6dbbf"; # my (Martin Wu) itune color
    $rgb{53} = "ff0033"; # Wu red
    $rgb{54} = "00f5ff"; # turquoise1
    $rgb{55} = "e0e0e0"; # gray88
    $rgb{56} = "ff1493"; # DeepPink1
    $rgb{57} = "ff4500"; # OrangeRed1
    $rgb{58} = "2f4f4f"; # DarkSlateGray
    $rgb{59} = "e6e6fa"; # Lavender
    $rgb{60} = "FFF8DC"; # regions, cornsilk
    $rgb{61} = "e0e0e0"; # monogene, user55
    $rgb{62} = "993333"; # brownish purple 
    $rgb{63} = "996666"; # tanish
    $rgb{64} = "B0C4DE"; # Light steel blue
    $rgb{65} = "F5D6DA"; # new pastel spectrum 91-100%
    $rgb{66} = "E5C5DB"; # new pastel spectrum 81-90%
    $rgb{67} = "D0BCD9"; # new pastel spectrum 71-80%
    $rgb{68} = "BBB8D2"; # new pastel spectrum 61-70%
    $rgb{69} = "AAB7C5"; # new pastel spectrum 51-60%
    $rgb{70} = "9EB5B3"; # new pastel spectrum 41-50%
    $rgb{71} = "97AFA0"; # new pastel spectrum 31-40%
    $rgb{72} = "94A48E"; # new pastel spectrum 21-30%
    $rgb{73} = "919481"; # new pastel spectrum 11-20%
    $rgb{74} = "8B8378"; # new pastel spectrum 1-10%
    $rgb{75} = "CDE472"; # iceberg lettuce
    $rgb{76} = "adff2f"; # green yellow
    $rgb{77} = "ba55d3"; # med orchid
    $color_lookup{"Mobile and extrachromosomal element functions"}= 48;
      $color_lookup{"152"}= 39; # Mobile and extrachromosomal element functions:  Prophage functions
      $color_lookup{"154"}= 40; # Mobile and extrachromosomal element functions:  Transposon functions
      $color_lookup{"186"}= 53; # Mobile and extrachromosomal element functions:  Plasmid functions
      $color_lookup{"708"}= 53; # Mobile and extrachromosomal element functions:  Other
    $color_lookup{"No database match"} = 49;
    $color_lookup{"Amino acid biosynthesis"} = 41;
      $color_lookup{"70"}= 41; # Amino acid biosynthesis:  Aromatic amino acid family
      $color_lookup{"71"}= 41; # Amino acid biosynthesis:  Aspartate family
      $color_lookup{"73"}= 41; # Amino acid biosynthesis:  Glutamate family
      $color_lookup{"74"}= 41; # Amino acid biosynthesis:  Pyruvate family
      $color_lookup{"75"}= 41; # Amino acid biosynthesis:  Serine family
      $color_lookup{"161"}= 41; # Amino acid biosynthesis: Histidine family 
      $color_lookup{"69"}= 41; # Amino acid biosynthesis:  Other
    $color_lookup{"Biosynthesis of cofactors, prosthetic groups, and carriers"} = 34;
      $color_lookup{"77"}= 34; # Biosynthesis of cofactors, prosthetic groups, and carriers:  Biotin
      $color_lookup{"78"}= 34; # Biosynthesis of cofactors, prosthetic groups, and carriers:  Folic acid
      $color_lookup{"79"}= 34; # Biosynthesis of cofactors, prosthetic groups, and carriers:  Heme, porphyrin, and cobalamin
      $color_lookup{"80"}= 34; # Biosynthesis of cofactors, prosthetic groups, and carriers:  Lipoate
      $color_lookup{"81"}= 34; # Biosynthesis of cofactors, prosthetic groups, and carriers:  Menaquinone and ubiquinone
      $color_lookup{"82"}= 34; # Biosynthesis of cofactors, prosthetic groups, and carriers:  Molybdopterin
      $color_lookup{"83"}= 34; # Biosynthesis of cofactors, prosthetic groups, and carriers:  Pantothenate and coenzyme A
      $color_lookup{"84"}= 34; # Biosynthesis of cofactors, prosthetic groups, and carriers:  Pyridoxine
      $color_lookup{"85"}= 34; # Biosynthesis of cofactors, prosthetic groups, and carriers:  Riboflavin, FMN, and FAD
      $color_lookup{"86"}= 34; # Biosynthesis of cofactors, prosthetic groups, and carriers:  Glutathione
      $color_lookup{"162"}= 34; # Biosynthesis of cofactors, prosthetic groups, and carriers: Thiamine
      $color_lookup{"163"}= 34; # Biosynthesis of cofactors, prosthetic groups, and carriers: Pyridine nucleotides 
      $color_lookup{"191"}= 34; # Biosynthesis of cofactors, prosthetic groups, and carriers: Chlorophyll 
      $color_lookup{"707"}= 34; # Biosynthesis of cofactors, prosthetic groups, and carriers: Siderophores 
      $color_lookup{"76"}= 34; # Biosynthesis of cofactors, prosthetic groups, and carriers:  Other
    $color_lookup{"Cell envelope"} = 35;
      $color_lookup{"88"}= 35; # Cell envelope:  Other
      $color_lookup{"89"}= 35; # Cell envelope:  Biosynthesis of murein sacculus and peptidoglycan
      $color_lookup{"90"}= 35; # Cell envelope:  Biosynthesis and degradation of surface polysaccharides and lipopolysaccharides
      $color_lookup{"91"}= 35; # Cell envelope:  Surface structures
    $color_lookup{"Cellular processes"} = 36;
      $color_lookup{"93"}= 36; # Cellular processes:  Cell division
      $color_lookup{"94"}= 36; # Cellular processes:  Toxin production and resistance
      $color_lookup{"96"}= 36; # Cellular processes:  Detoxification
      $color_lookup{"98"}= 36; # Cellular processes:  DNA transformation
      $color_lookup{"149"}= 36; # Cellular processes:  Adaptations to atypical conditions
      $color_lookup{"187"}= 36; # Cellular processes:  Pathogenesis
      $color_lookup{"188"}= 36; # Cellular processes:  Chemotaxis and motility
      $color_lookup{"701"}= 36; # Cellular processes:  Cell adhesion
      $color_lookup{"702"}= 36; # Cellular processes:  Conjugation
      $color_lookup{"705"}= 36; # Cellular processes:  Sporulation and germination
      $color_lookup{"706"}= 36; # Cellular processes:  Biosynthesis of natural products
      $color_lookup{"92"}= 36; # Cellular processes:  Other
    $color_lookup{"Central intermediary metabolism"} = 37;
      $color_lookup{"100"}= 37; # Central intermediary metabolism:  Amino sugars
      $color_lookup{"103"}= 37; # Central intermediary metabolism:  Phosphorus compounds
      $color_lookup{"104"}= 37; # Central intermediary metabolism:  Polyamine biosynthesis
      $color_lookup{"105"}= 37; # Central intermediary metabolism:  Sulfur metabolism
      $color_lookup{"179"}= 37; # Central intermediary metabolism:  Nitrogen fixation
      $color_lookup{"160"}= 37; # Central intermediary metabolism:  Nitrogen metabolism
      $color_lookup{"698"}= 37; # Central intermediary metabolism:  One-carbon metabolism
      $color_lookup{"709"}= 37; # Central intermediary metabolism:  Electron carrier regeneration  
      $color_lookup{"102"}= 37; # Central intermediary metabolism:  Other
    $color_lookup{"Energy metabolism"} = 38;
      $color_lookup{"109"}= 38; # Energy metabolism:  Amino acids and amines
      $color_lookup{"111"}= 38; # Energy metabolism:  ATP-proton motive force interconversion
      $color_lookup{"112"}= 38; # Energy metabolism:  Electron transport
      $color_lookup{"118"}= 38; # Energy metabolism:  Pyruvate dehydrogenase
      $color_lookup{"108"}= 38; # Energy metabolism:  Aerobic
      $color_lookup{"110"}= 38; # Energy metabolism:  Anaerobic
      $color_lookup{"113"}= 38; # Energy metabolism:  Entner-Doudoroff
      $color_lookup{"114"}= 38; # Energy metabolism:  Fermentation
      $color_lookup{"116"}= 38; # Energy metabolism:  Glycolysis/gluconeogenesis
      $color_lookup{"117"}= 38; # Energy metabolism:  Pentose phosphate pathway
      $color_lookup{"119"}= 38; # Energy metabolism:  Sugars
      $color_lookup{"120"}= 38; # Energy metabolism:  TCA cycle
      $color_lookup{"159"}= 38; # Energy metabolism:  Methanogenesis
      $color_lookup{"105"}= 38; # Energy metabolism:  Biosynthesis and degradation of polysaccharides
      $color_lookup{"164"}= 38; # Energy metabolism:  Photosynthesis
      $color_lookup{"180"}= 38; # Energy metabolism:  Chemoautotrophy
      $color_lookup{"184"}= 38; # Energy metabolism:  Other
    $color_lookup{"Nitrogen metabolism"} = 38;
    $color_lookup{"Methanogenesis"} = 38;
    $color_lookup{"Fatty acid and phospholipid metabolism"} = 40;
      $color_lookup{"176"}= 48; # Fatty acid and phospholipid metabolism:  Biosynthesis
      $color_lookup{"177"}= 48; # Fatty acid and phospholipid metabolism:  Degradation
      $color_lookup{"121"}= 48; # Fatty acid and phospholipid metabolism:  Other
    $color_lookup{"Purines, pyrimidines, nucleosides, and nucleotides"} = 42;
      $color_lookup{"123"}= 42; # Purines, pyrimidines, nucleosides, and nucleotides:  2'-Deoxyribonucleotide metabolism
      $color_lookup{"124"}= 42; # Purines, pyrimidines, nucleosides, and nucleotides:  Nucleotide and nucleoside interconversions
      $color_lookup{"125"}= 42; # Purines, pyrimidines, nucleosides, and nucleotides:  Purine ribonucleotide biosynthesis
      $color_lookup{"126"}= 42; # Purines, pyrimidines, nucleosides, and nucleotides:  Pyrimidine ribonucleotide biosynthesis
      $color_lookup{"127"}= 42; # Purines, pyrimidines, nucleosides, and nucleotides:  Salvage of nucleosides and nucleotides
      $color_lookup{"128"}= 42; # Purines, pyrimidines, nucleosides, and nucleotides:  Sugar-nucleotide biosynthesis and conversions
      $color_lookup{"122"}= 42; # Purines, pyrimidines, nucleosides, and nucleotides:  Other
    $color_lookup{"Regulatory functions"} = 43;
      $color_lookup{"129"}= 43; # Regulatory functions:  Other
      $color_lookup{"261"}= 43; # Regulatory functions:  DNA interactions
      $color_lookup{"262"}= 43; # Regulatory functions:  RNA interactions
      $color_lookup{"263"}= 43; # Regulatory functions:  Protein interactions
      $color_lookup{"264"}= 43; # Regulatory functions:  Small molecule interactions
      $color_lookup{"129"}= 43; # Regulatory functions:  Other
    $color_lookup{"Signal transduction"} = 43;
      $color_lookup{"699"}= 43; # Signal transduction:  Two-component systems
      $color_lookup{"700"}= 43; # Signal transduction:  PTS
      $color_lookup{"710"}= 43; # Signal transduction:  Other
    $color_lookup{"DNA metabolism"} = 44;
      $color_lookup{"130"}= 44; # DNA metabolism:  Other
      $color_lookup{"131"}= 44; # DNA metabolism:  Degradation of DNA
      $color_lookup{"132"}= 44; # DNA metabolism:  DNA replication, recombination, and repair
      $color_lookup{"170"}= 44; # DNA metabolism:  Chromosome-associated proteins
      $color_lookup{"183"}= 44; # DNA metabolism:  Restriction/modification
    $color_lookup{"Transcription"} = 45;
      $color_lookup{"134"}= 45; # Transcription:  Degradation of RNA
      $color_lookup{"135"}= 45; # Transcription:  DNA-dependent RNA polymerase
      $color_lookup{"165"}= 45; # Transcription:  Transcription factors
      $color_lookup{"166"}= 45; # Transcription:  RNA processing
      $color_lookup{"133"}= 45; # Transcription:  Other
    $color_lookup{"Protein fate"} = 46;
      $color_lookup{"97"}= 46; # Protein fate:  Protein and peptide secretion and trafficking
      $color_lookup{"140"}= 46; # Protein fate:  Protein modification and repair
      $color_lookup{"95"}= 46; # Protein fate:  Protein folding and stabilization
      $color_lookup{"138"}= 46; # Protein fate:  Degradation of proteins, peptides, and glycopeptides
      $color_lookup{"189"}= 46; # Protein fate:  Other
    $color_lookup{"Protein synthesis"} = 46;
      $color_lookup{"137"}= 46; # Protein synthesis:  tRNA aminoacylation
      $color_lookup{"158"}= 46; # Protein synthesis:  Ribosomal proteins: synthesis and modification
      $color_lookup{"168"}= 46; # Protein synthesis:  tRNA and rRNA base modification
      $color_lookup{"169"}= 46; # Protein synthesis:  Translation factors
      $color_lookup{"136"}= 46; # Protein synthesis:  Other
    $color_lookup{"Transport and binding proteins"} = 47;
      $color_lookup{"141"}= 47; # Transport and binding proteins:  Unknown substrate
      $color_lookup{"142"}= 47; # Transport and binding proteins:  Amino acids, peptides and amines
      $color_lookup{"143"}= 47; # Transport and binding proteins:  Anions
      $color_lookup{"144"}= 47; # Transport and binding proteins:  Carbohydrates, organic alcohols, and acids
      $color_lookup{"145"}= 47; # Transport and binding proteins:  Cations and iron carrying compounds
      $color_lookup{"146"}= 47; # Transport and binding proteins:  Nucleosides, purines and pyrimidines
      $color_lookup{"182"}= 47; # Transport and binding proteins:  Porins
      $color_lookup{"147"}= 47; # Transport and binding proteins:  Other
    $color_lookup{"Other categories"} = 50;
    $color_lookup{"Hypothetical proteins"} = 51;
      $color_lookup{"NULL"}= 7; # hypothetical proteins (white, was 51, diagonal)
    $color_lookup{"Conserved hypothetical proteins"} = 52;
      $color_lookup{"156"}= 52; # Hypothetical proteins:  Conserved
      $color_lookup{"704"}= 52; # Hypothetical proteins:  Domain
    $color_lookup{"Unknown"} = 50; # genes with Unknown assignment, are grouped into other, if that makes sense.
    $color_lookup{"Unknown function"} = 50; # genes with Unknown assignment, are grouped into other, if that makes sense.
      $color_lookup{"157"}= 50; # Unknown function:  General
      $color_lookup{"703"}= 50; # Unknown function:  Enzymes of unknown specificity
    $color_lookup{"Unclassified"} = 50; # genes with Unknown assignment, are grouped into other, if that makes sense.
      $color_lookup{"185"}= 50; # Unclassified
    $color_lookup{"Disrupted reading frame"} = 50; # genes with Unknown assignment, are grouped into other, if that makes sense.
      $color_lookup{"270"}= 50; # Disrupted reading frame
#######################################################
# dfouts phage roles
#######################################################
    $color_lookup{"1000"}= 64; # Regulatory functions:  DNA interactions [magenta]
    $color_lookup{"1015"}= 35; # Regulatory functions:  protein interactions (eg anti-repressor) [lt green]
    $color_lookup{"1034"}= 76; # Regulatory functions:  anti-termination [green yellow]
    $color_lookup{"1001"}= 6; # DNA metabolism:  DNA recombination [yellow]
    $color_lookup{"1002"}= 44; # DNA metabolism:  DNA integration [gold]
    $color_lookup{"1032"}= 59; # DNA metabolism: DNA excision [lavender]
    $color_lookup{"1003"}= 2; # DNA metabolism:  DNA replication [green]
    $color_lookup{"1004"}= 54; # DNA metabolism: Restriction/modification [turquoise1]
    $color_lookup{"1016"}= 42; # DNA metabolism: DNA interactions (eg SSB) [orange]
    $color_lookup{"1034"}= 75; # DNA metabolism: DNA segregation (eg SpoIIIE/FtsK) [iceberg lettice]
    $color_lookup{"1005"}= 30; # Capsid structural components and assembly:  small terminase [lt pink]
    $color_lookup{"1006"}= 28; # Capsid structural components and assembly:  large terminase [pink]
    $color_lookup{"1007"}= 8; # Capsid structural components and assembly:  portal [dark blue]
    $color_lookup{"1008"}= 39; # Capsid structural components and assembly:  protease (scaffold protein) [dk green]
    $color_lookup{"1009"}= 48; # Capsid structural components and assembly:  major capsid [violet]
    $color_lookup{"1017"}= 43; # Capsid structural components and assembly:  minor capsid [olive]
    $color_lookup{"1026"}= 58; # Capsid structural components and assembly:  other [dark slate gray]
    $color_lookup{"1010"}= 25; # Tail and baseplate assembly:  tape measure [brown]
    $color_lookup{"1011"}= 47; # Tail and baseplate assembly:  tail component [blue green]
    $color_lookup{"1033"}= 70; # Tail and baseplate assembly:  tail fiber [lt turquoise]
    $color_lookup{"1035"}= 77; # Tail and baseplate assembly:  receptor-binding [med orchid]
    $color_lookup{"1012"}= 53; # Host cell lysis:  endolysin/lysin [red]
    $color_lookup{"1013"}= 20; # Host cell lysis:  holin [lt red]
    $color_lookup{"1014"}= 60; # putative fitness factor [cornsilk]
    $color_lookup{"1018"}= 45; # Conserved phage protein (hit in phage db, no known function) [gray]
    $color_lookup{"1019"}= 33; # Target gene for integration [blue]
    $color_lookup{"1020"}= 38; # Conserved hypothetical (No matches to reference phage genome (or phage db but matches in other db)) [lt gray]
    $color_lookup{"1021"}= 34; # DNA metabolism:  nucleotide degradation (nucleases) [lt blue]
    $color_lookup{"1027"}= 10; # DNA metabolism:  Salvage of nucleosides and nucleotides [blue]
    $color_lookup{"1022"}= 49; # DNA metabolism:  DNA ligase [lt brown]
    $color_lookup{"1023"}= 46; # Transposon functions [pink]
    $color_lookup{"1024"}= 40; # Introns [salmon]
    $color_lookup{"1025"}= 37; # Drug resistance and toxin production [brown]
    $color_lookup{"1028"}= 50; # Hypothetical Phage protein (novel CDS) [black]
    $color_lookup{"1029"}= 57; # Transcription:  Transcription factors [orangered1]
    $color_lookup{"1030"}= 62; # Plasmid-like functions:  Addiction:  toxin (ie pemK of R100, phd of phage P1) [brownish purple]
    $color_lookup{"1031"}= 63; # Plasmid-like functions:  Addiction:  anti-toxin (ie pemI of R100, doc of phage P1) [tanish]
    $color_lookup{"2000"}= 7; # (white) different ORF call by other facility [white]
#######################################################
    return(\%rgb, \%color_lookup);
}


sub load_global_struct {
    my %s;

    # debugging and options things
    $s{'debug'} = 0;
    $s{'prog'} = $0;
    $s{'prog'} =~ s/.*\///;
    $s{'seq_line_toggle'} = 1;
    $s{'trna_name_toggle'} = 0;
    $s{'truncate_name_toggle'} = 0;
    $s{'short_gene_toggle'} = 0;
    $s{'object_spacing'} = 22;
    $s{'locus_toggle'} = 0;
    $s{'gene_sym_toggle'} = 0;
    $s{'xml_toggle'} = 0;
    $s{'block_toggle'} = 1;
    $s{'select_genes_toggle'} = 0;

    # color things
    $s{'color_start'} = 33;
    $s{'black'} = 0;
    $s{'blue'} =  1;
    $s{'green'} = 2;
    $s{'cyan'} =  3;
    $s{'red'} =   4;
    $s{'magenta'} = 5;
    $s{'yellow'} = 6;
    $s{'white'} = 7;
    $s{'pink'} = 30;
    $s{'cornsilk'} = 60;
    $s{'user55'} = 61;
    $s{'gray'} = 45;
    $s{'crosshatch'} = 51;
    $s{'regions'} = 60;

    # general layout things
    $s{'tick'} = 100;  # make tick mark every 100 bp
    $s{'major_tick'} = 2000;  # make major tick mark every 2000 bp
    $s{'minor_tick'} = 1000;  # make minor tick mark every 2000 bp
    $s{'x_border'} = 500;
    $s{'y_border'} = 2000;
    $s{'line_spacing'} = 4000;
    $s{'point_size'} = 12;
    $s{'char_width'} = 105;
    $s{'line_offset'} = 500;

    $s{'forward'} = 1;
    $s{'reverse'} = 2;

    $s{'label_height'} = 150;
    $s{'label_offset'} = 70;

    $s{'row_depth'} = 105; # 105

    $s{'block_depth'} = 120;

    $s{'gene_depth'} = 100;
    $s{'gene_height'} = 600;
    $s{'gene_offset'} = 75;
    $s{'gene_arrow_height'} = $s{'gene_height'} * 2;
    $s{'gene_arrow_width'} = $s{'gene_height'} * 0.5;
    $s{'gene_total'} = ($s{'gene_height'} + $s{'gene_offset'});
    $s{'cross_hatch_offset'} = 75;
    $s{'cross_hatch_depth'} = 95;
    
    $s{'chi_position'} = $s{'gene_height'};
    $s{'chi_height'} = $s{'line_spacing'} - 3*$s{'gene_height'};

    $s{'arrow_offset'} = 125;
    $s{'tick_offset'} = 75;

    $s{'insertion_arrow_pad_x'} = 30;
    $s{'insertion_arrow_pad_y'} = 30;
    $s{'insertion_arrow_len'} = 200;

    $s{'range_height'} = 200;
    $s{'range_offset'} = 75;
    $s{'range_total'} = $s{'range_height'} / 2;

    $s{'transport_height'} = 450;
    $s{'transport_width'} = 100;
    $s{'transport_offset'} = 30;
    $s{'transport_total'} = ($s{'transport_height'} + $s{'transport_offset'} + $s{'label_height'} + $s{'label_offset'});

    $s{'legend_height'} = 250;
    $s{'legend_width'} = 500;
    $s{'legend_inc'} = 75;
    $s{'legend_offset'} = 250;

    $s{'trna_height'} = 550;
    $s{'trna_width'} = 500;
    $s{'trna_pad'} = 0;
    $s{'trna_total'} = ($s{'trna_height'} + $s{'trna_offset'} + $s{'label_height'} + $s{'label_offset'});

    $s{'rrna_height'} = 250;
    $s{'rrna_pad'} = 0;

    $s{'srna_height'} = 250;
    $s{'srna_pad'} = 0;

    $s{'repeat_height'} = 180;
    $s{'repeat_offset'} = 140;
    $s{'repeat_total'} = ($s{'repeat_height'}/2 + $s{'repeat_offset'} + $s{'label_height'} + $s{'label_offset'});

    $s{'mem_squiggle1'} = [0, -0.5, -0.5, -0.291666666666667, 0.5, 0.125, 0, 0.5];

    $s{'mem_squiggle2'} = [0, 0.5, 0.5, 0.125, -0.5, -0.291666666666667, 0, -0.5];

    $s{'hairpin'} = [0.277777777777778, 0.99537037037037, 0.277777777777778, 0.671296296296296, 0.277777777777778, 0.361111111111111, 0, 0.277777777777778, 0, 0.12037037037037, 0.277777777777778, 0, 0.722222222222222, 0, 1, 0.12037037037037, 1, 0.277777777777778, 0.722222222222222, 0.361111111111111, 0.722222222222222, 0.671296296296296, 0.722222222222222, 0.99537037037037];

    $s{'cleave_squiggle'} = [-0.5, -0.5, 0.5, -0.327586206896552, -0.5, -0.189655172413793, 0.5, -0.0517241379310345, -0.5, 0.0862068965517241, 0.5, 0.224137931034483, -0.5, 0.362068965517241, 0.5, 0.5];

    $s{'rRNarray'} = [0.417480998914224, -0.391472868217054, 0.0743756786102063, -0.5, -0.343648208469055, -0.391472868217054, -0.5, -0.22093023255814, -0.408794788273616, -0.131782945736434, -0.139522258414767, -0.205426356589147, 0.156894679695983, -0.236434108527132, 0.45114006514658, -0.174418604651163, 0.433767643865364, 0.00775193798449612, 0.213355048859935, 0.0387596899224806, -0.139522258414767, 0.00775193798449612, -0.458740499457112, 0.0852713178294574, -0.384907709011944, 0.267441860465116, -0.0483170466883822, 0.255813953488372, 0.318675352877307, 0.255813953488372, 0.48371335504886, 0.298449612403101, 0.5, 0.410852713178295, 0.368621064060803, 0.484496124031008, 0.165580890336591, 0.5, -0.287187839305103, 0.468992248062016];

    $s{'tRNarray'} = [-0.102373887240356, -0.387468030690537, -0.105341246290801, -0.0140664961636829, -0.143916913946588, -0.00383631713554987, -0.238872403560831, -0.00383631713554987, -0.357566765578635, -0.00383631713554987, -0.408011869436202, -0.0242966751918159, -0.476261127596439, -0.0242966751918159, -0.5, 0.0370843989769821, -0.476261127596439, 0.0677749360613811, -0.399109792284866, 0.0882352941176471, -0.357566765578635, 0.0601023017902813, -0.330860534124629, 0.0601023017902813, -0.155786350148368, 0.0601023017902813, -0.105341246290801, 0.0601023017902813, -0.105341246290801, 0.313299232736573, -0.105341246290801, 0.346547314578005, -0.152818991097923, 0.400255754475703, -0.143916913946588, 0.466751918158568, -0.105341246290801, 0.489769820971867, -0.0489614243323442, 0.5, -0.00148367952522255, 0.497442455242967, 0.0252225519287834, 0.456521739130435, 0.0252225519287834, 0.400255754475703, -0.0222551928783383, 0.338874680306905, -0.0103857566765579, 0.313299232736573, -0.0222551928783383, 0.101023017902813, 0.0192878338278932, 0.0984654731457801, 0.120178041543027, 0.170076726342711, 0.161721068249258, 0.0933503836317136, -0.00148367952522255, 0.0319693094629156, 0.0400593471810089, 0.0140664961636829, 0.313056379821958, 0.0140664961636829, 0.345697329376855, 0.0140664961636829, 0.390207715133531, 0.0421994884910486, 0.428783382789317, 0.0421994884910486, 0.482195845697329, 0.0370843989769821, 0.5, -0.00383631713554987, 0.491097922848665, -0.0473145780051151, 0.446587537091988, -0.0754475703324808, 0.390207715133531, -0.0754475703324808, 0.345697329376855, -0.0421994884910486, 0.301186943620178, -0.0524296675191816, 0.0192878338278932, -0.0524296675191816, -0.00148367952522255, -0.0601023017902813, 0.00148367952522255, -0.5];

    $s{'sRNarray7S'} = [-0.318181818181818, 0.491452991452991, -0.318181818181818, 0.1996336996337, -0.318181818181818, -0.152014652014652, -0.309917355371901, -0.255799755799756, -0.452479338842975, -0.303418803418803, -0.5, -0.38034188034188, -0.392561983471074, -0.48046398046398, -0.208677685950413, -0.5, -0.0392561983471074, -0.48046398046398, 0.0413223140495868, -0.415750915750916, 0.0888429752066116, -0.387667887667888, 0.210743801652893, -0.384004884004884, 0.40702479338843, -0.387667887667888, 0.386363636363636, -0.336385836385836, 0.237603305785124, -0.336385836385836, 0.0289256198347107, -0.336385836385836, 0.00826446280991736, -0.28021978021978, -0.107438016528926, -0.275335775335775, -0.0537190082644628, -0.243589743589744, 0.109504132231405, -0.187423687423687, 0.109504132231405, -0.152014652014652, 0.0413223140495868, -0.152014652014652, -0.148760330578512, -0.22039072039072, -0.167355371900826, -0.195970695970696, -0.167355371900826, -0.0885225885225885, -0.165289256198347, 0.0457875457875458, -0.109504132231405, 0.0604395604395604, 0.485537190082645, 0.0726495726495727, 0.5, 0.109279609279609, -0.161157024793388, 0.103174603174603, -0.161157024793388, 0.17032967032967, -0.171487603305785, 0.28021978021978, -0.167355371900826, 0.5];

   $s{'sRNarrayP'} = [-0.00598290598290598, 0.494389901823282, 0.000854700854700855, 0.335904628330996, -0.000854700854700855, 0.14656381486676, -0.127350427350427, 0.0890603085553997, -0.115384615384615, -0.0259467040673212, -0.101709401709402, -0.046984572230014, -0.5, -0.23632538569425, -0.435042735042735, -0.299438990182328, -0.0435897435897436, -0.105890603085554, 0.0521367521367521, -0.131136044880785, 0.0965811965811966, -0.14796633941094, 0.103418803418803, -0.5, 0.205982905982906, -0.5, 0.161538461538462, -0.121318373071529, 0.238461538461538, -0.0638148667601683, 0.25042735042735, 0.0413744740532959, 0.231623931623932, 0.0624123422159888, 0.5, 0.0582047685834502, 0.462393162393162, 0.115708274894811, 0.205982905982906, 0.115708274894811, 0.103418803418803, 0.173211781206171, 0.117094017094017, 0.338709677419355, 0.115384615384615, 0.5];

   $s{'rRNarray23S'} = [-0.482367758186398, 0.170428893905192, -0.285894206549118, 0.174943566591422, -0.281360201511335, 0.208803611738149, -0.282871536523929, 0.341986455981941, -0.284382871536524, 0.41647855530474, -0.277833753148615, 0.457110609480813, -0.268261964735516, 0.432279909706546, -0.267254408060453, 0.238148984198646, -0.266750629722922, 0.174943566591422, -0.176070528967254, 0.174943566591422, -0.0919395465994962, 0.174943566591422, -0.0360201511335013, 0.174943566591422, -0.0254408060453401, 0.183972911963883, -0.0168765743073048, 0.303611738148984, 0.00579345088161209, 0.326185101580135, 0.0294710327455919, 0.287810383747178, 0.0390428211586902, 0.188487584650113, 0.0476070528967254, 0.179458239277652, 0.142821158690176, 0.188487584650113, 0.170528967254408, 0.188487584650113, 0.173551637279597, 0.22686230248307, 0.173551637279597, 0.287810383747178, 0.173551637279597, 0.366817155756208, 0.144836272040302, 0.317155756207675, 0.130730478589421, 0.40744920993228, 0.142821158690176, 0.445823927765237, 0.156423173803526, 0.466139954853273, 0.168010075566751, 0.409706546275395, 0.174055415617128, 0.387133182844244, 0.249622166246851, 0.466139954853273, 0.293954659949622, 0.5, 0.3, 0.452595936794582, 0.202770780856423, 0.357787810383747, 0.190680100755668, 0.326185101580135, 0.19168765743073, 0.183972911963883, 0.210327455919395, 0.147855530474041, 0.223425692695214, 0.147855530474041, 0.231989924433249, 0.215575620767494, 0.257682619647355, 0.215575620767494, 0.271284634760705, 0.152370203160271, 0.289420654911839, 0.152370203160271, 0.395717884130982, 0.14334085778781, 0.410831234256927, 0.14334085778781, 0.42896725440806, 0.193002257336343, 0.443576826196474, 0.163656884875847, 0.445088161209068, 0.064334085778781, 0.424937027707809, 0.0169300225733634, 0.406297229219144, 0.0733634311512415, 0.395717884130982, 0.0778781038374718, 0.345843828715365, 0.0914221218961625, 0.270780856423174, 0.0981941309255079, 0.269773299748111, 0.04627539503386, 0.250629722921914, 0.00790067720090293, 0.235012594458438, 0.0349887133182844, 0.226952141057935, 0.104966139954853, 0.211335012594458, 0.0959367945823928, 0.243576826196474, -0.0891647855530474, 0.248110831234257, -0.120767494356659, 0.312090680100756, -0.113995485327314, 0.403274559193955, -0.111738148984199, 0.443576826196474, -0.102708803611738, 0.481360201511335, -0.109480812641084, 0.5, -0.136568848758465, 0.492947103274559, -0.183972911963883, 0.463224181360201, -0.195259593679458, 0.395717884130982, -0.183972911963883, 0.397732997481108, -0.249435665914221, 0.415869017632242, -0.321670428893905, 0.411335012594458, -0.448081264108352, 0.38463476070529, -0.457110609480813, 0.367002518891688, -0.434537246049661, 0.364987405541562, -0.294582392776524, 0.386649874055416, -0.249435665914221, 0.38463476070529, -0.174943566591422, 0.365994962216625, -0.174943566591422, 0.23904282115869, -0.174943566591422, 0.237027707808564, -0.224604966139955, 0.237531486146096, -0.391647855530474, 0.237531486146096, -0.452595936794582, 0.227959697732997, -0.5, 0.220906801007557, -0.448081264108352, 0.223929471032746, -0.364559819413093, 0.223929471032746, -0.229119638826185, 0.223929471032746, -0.0756207674943567, 0.213853904282116, -0.0191873589164786, 0.201259445843829, 0.0507900677200903, 0.192695214105793, 0.109480812641084, 0.170528967254408, 0.125282167042889, 0.142821158690176, 0.125282167042889, 0.044080604534005, 0.123024830699774, 0.0370277078085642, 0.116252821670429, 0.0314861460957179, 0.00338600451467269, 0.00982367758186398, -0.0101580135440181, 0.00226700251889169, -0.0191873589164786, 0.00428211586901763, -0.13431151241535, 0.0173803526448363, -0.181715575620767, 0.0204030226700252, -0.208803611738149, 0.027455919395466, -0.242663656884876, 0.0244332493702771, -0.287810383747178, 0.0123425692695214, -0.299097065462754, 0.00226700251889169, -0.305869074492099, 0.00226700251889169, -0.382618510158014, 0.00226700251889169, -0.468397291196388, -0.0128463476070529, -0.461625282167043, -0.0128463476070529, -0.391647855530474, -0.00982367758186398, -0.353273137697517, -0.0148614609571788, -0.283295711060948, -0.0188916876574307, -0.269751693002257, -0.0944584382871537, -0.274266365688488, -0.138287153652393, -0.278781038374718, -0.16095717884131, -0.274266365688488, -0.162972292191436, -0.229119638826185, -0.144332493702771, -0.213318284424379, -0.0939546599496222, -0.213318284424379, -0.0465994962216625, -0.208803611738149, -0.0188916876574307, -0.208803611738149, -0.00982367758186398, -0.159142212189616, -0.0123425692695214, -0.0507900677200903, -0.0123425692695214, -0.00564334085778781, -0.0183879093198992, 0.0146726862302483, -0.0254408060453401, 0.0237020316027088, -0.0254408060453401, 0.109480812641084, -0.0455919395465995, 0.116252821670429, -0.312090680100756, 0.116252821670429, -0.348362720403023, 0.116252821670429, -0.346851385390428, 0.0507900677200903, -0.348362720403023, 0.0146726862302483, -0.235012594458438, 0.0124153498871332, -0.219899244332494, 0.00564334085778781, -0.214861460957179, -0.0282167042889391, -0.240050377833753, -0.0304740406320542, -0.292947103274559, -0.0349887133182844, -0.341813602015113, -0.0214446952595937, -0.347858942065491, -0.0349887133182844, -0.341309823677582, -0.0778781038374718, -0.328211586901763, -0.147855530474041, -0.332745591939547, -0.262979683972912, -0.352896725440806, -0.287810383747178, -0.374055415617128, -0.274266365688488, -0.383123425692695, -0.170428893905192, -0.37455919395466, -0.0778781038374718, -0.362972292191436, -0.0237020316027088, -0.363979848866499, 0.0237020316027088, -0.364987405541562, 0.109480812641084, -0.373047858942065, 0.116252821670429, -0.389672544080605, 0.120767494356659, -0.412342569269521, 0.120767494356659, -0.5, 0.120767494356659]; 

    $s{'rRNarray5S'} = [-0.294444444444444, 0.494750656167979, -0.294444444444444, 0.203412073490814, -0.294444444444444, -0.148293963254593, -0.288888888888889, -0.253280839895013, -0.444444444444444, -0.303149606299213, -0.5, -0.376640419947507, -0.377777777777778, -0.479002624671916, -0.177777777777778, -0.5, 0.0111111111111111, -0.479002624671916, 0.1, -0.413385826771654, 0.155555555555556, -0.384514435695538, 0.288888888888889, -0.381889763779528, 0.5, -0.387139107611549, 0.477777777777778, -0.334645669291339, 0.316666666666667, -0.334645669291339, 0.0888888888888889, -0.334645669291339, 0.0666666666666667, -0.279527559055118, -0.0666666666666667, -0.274278215223097, -0.00555555555555556, -0.240157480314961, 0.177777777777778, -0.187664041994751, 0.177777777777778, -0.150918635170604, 0.1, -0.150918635170604, -0.105555555555556, -0.216535433070866, -0.127777777777778, -0.192913385826772, -0.127777777777778, -0.0853018372703412, -0.127777777777778, 0.203412073490814, -0.133333333333333, 0.5];

    $s{'rRNarray16S'} = [-0.498552821997106, -0.317073170731707, -0.363965267727931, -0.317073170731707, -0.273516642547033, -0.317073170731707, -0.256874095513748, -0.326829268292683, -0.243125904486252, -0.470731707317073, -0.206946454413893, -0.5, -0.168596237337192, -0.453658536585366, -0.153400868306802, -0.331707317073171, -0.139652677279305, -0.321951219512195, 0.0137481910274964, -0.331707317073171, 0.0578871201157742, -0.331707317073171, 0.0629522431259045, -0.380487804878049, 0.0918958031837916, -0.326829268292683, 0.122286541244573, -0.282926829268293, 0.143270622286541, -0.282926829268293, 0.157018813314038, -0.365853658536585, 0.198263386396527, -0.365853658536585, 0.219971056439942, -0.290243902439024, 0.249638205499276, -0.290243902439024, 0.42040520984081, -0.278048780487805, 0.445007235890014, -0.278048780487805, 0.473950795947902, -0.336585365853659, 0.497105643994211, -0.302439024390244, 0.5, -0.182926829268293, 0.467438494934877, -0.124390243902439, 0.437047756874096, -0.192682926829268, 0.42040520984081, -0.2, 0.340086830680174, -0.214634146341463, 0.219247467438495, -0.224390243902439, 0.217800289435601, -0.160975609756098, 0.187409551374819, -0.114634146341463, 0.162083936324168, -0.146341463414634, 0.149059334298119, -0.231707317073171, 0.123733719247467, -0.221951219512195, 0.175832127351664, 0.0024390243902439, 0.183068017366136, 0.0414634146341463, 0.168596237337192, 0.107317073170732, 0.164978292329957, 0.165853658536585, 0.165701881331404, 0.368292682926829, 0.165701881331404, 0.44390243902439, 0.150506512301013, 0.5, 0.138929088277858, 0.436585365853659, 0.143994211287988, 0.336585365853659, 0.143994211287988, 0.173170731707317, 0.143994211287988, -0.0121951219512195, 0.128075253256151, -0.0804878048780488, 0.10781476121563, -0.165853658536585, 0.0940665701881331, -0.236585365853659, 0.0578871201157742, -0.25609756097561, 0.0137481910274964, -0.25609756097561, -0.144717800289436, -0.253658536585366, -0.15629522431259, -0.246341463414634, -0.164978292329957, -0.109756097560976, -0.200434153400868, -0.0926829268292683, -0.212011577424023, -0.0804878048780488, -0.209117221418234, 0.0585365853658537, -0.188133140376266, 0.114634146341463, -0.183068017366136, 0.148780487804878, -0.171490593342981, 0.18780487804878, -0.176555716353111, 0.24390243902439, -0.196092619392185, 0.25609756097561, -0.212011577424023, 0.265853658536585, -0.212011577424023, 0.358536585365854, -0.212011577424023, 0.460975609756098, -0.236613603473227, 0.453658536585366, -0.236613603473227, 0.368292682926829, -0.231548480463097, 0.321951219512195, -0.239507959479016, 0.239024390243902, -0.246020260492041, 0.221951219512195, -0.246020260492041, 0.148780487804878, -0.231548480463097, 0.0878048780487805, -0.23589001447178, -0.0439024390243902, -0.23589001447178, -0.0975609756097561, -0.245296671490593, -0.121951219512195, -0.256874095513748, -0.134146341463415, -0.256874095513748, -0.236585365853659, -0.289435600578871, -0.246341463414634, -0.363241678726483, -0.248780487804878, -0.5, -0.248780487804878];

    $s{'tmRNarray'} = [0.420000000000000,-0.308571428571429,0.420000000000000,-0.028571428571429,0.410000000000000,-0.020000000000000,0.366666666666667,-0.017142857142857,0.330000000000000,-0.020000000000000,0.290000000000000,-0.020000000000000,0.230000000000000,-0.042857142857143,0.176666666666667,-0.037142857142857,0.146666666666667,-0.017142857142857,0.136666666666667,0.005714285714286,0.130000000000000,0.022857142857143,0.150000000000000,0.060000000000000,0.176666666666667,0.082857142857143,0.226666666666667,0.094285714285714,0.280000000000000,0.108571428571429,0.340000000000000,0.111428571428571,0.426666666666667,0.137142857142857,0.426666666666667,0.374285714285714,0.410000000000000,0.391428571428571,0.406666666666667,0.425714285714286,0.400000000000000,0.591428571428571,0.430000000000000,0.608571428571429,0.440000000000000,0.642857142857143,0.430000000000000,0.648571428571429,0.400000000000000,0.668571428571429,0.410000000000000,0.691428571428571,0.420000000000000,0.708571428571429,0.446666666666667,0.720000000000000,0.446666666666667,0.742857142857143,0.446666666666667,0.794285714285714,0.450000000000000,0.922857142857143,0.456666666666667,1.128571428571430,0.396666666666667,1.148571428571430,0.400000000000000,1.120000000000000,0.396666666666667,1.085714285714290,0.396666666666667,1.045714285714290,0.390000000000000,1.017142857142860,0.376666666666667,1.000000000000000,0.376666666666667,0.960000000000000,0.380000000000000,0.922857142857143,0.376666666666667,0.888571428571429,0.376666666666667,0.822857142857143,0.356666666666667,0.822857142857143,0.310000000000000,0.828571428571429,0.246666666666667,0.874285714285714,0.246666666666667,0.908571428571429,0.256666666666667,0.960000000000000,0.286666666666667,1.002857142857140,0.326666666666667,1.025714285714290,0.326666666666667,1.217142857142860,0.360000000000000,1.222857142857140,0.510000000000000,1.222857142857140,0.566666666666667,1.182857142857140,0.586666666666667,1.140000000000000,0.600000000000000,1.062857142857140,0.616666666666667,1.037142857142860,0.660000000000000,0.977142857142857,0.706666666666667,0.948571428571429,0.736666666666667,0.951428571428571,0.786666666666667,0.957142857142857,1.200000000000000,0.940000000000000,1.226666666666670,1.102857142857140,1.200000000000000,1.111428571428570,1.176666666666670,1.120000000000000,1.160000000000000,1.128571428571430,1.156666666666670,1.148571428571430,1.156666666666670,1.165714285714290,1.150000000000000,1.188571428571430,1.170000000000000,1.205714285714290,1.170000000000000,1.222857142857140,1.196666666666670,1.240000000000000,1.210000000000000,1.257142857142860,1.250000000000000,1.268571428571430,1.286666666666670,1.268571428571430,1.296666666666670,1.260000000000000,1.340000000000000,1.240000000000000,1.336666666666670,1.251428571428570,1.370000000000000,1.208571428571430,1.370000000000000,1.180000000000000,1.356666666666670,1.148571428571430,1.330000000000000,1.128571428571430,1.326666666666670,1.105714285714290,1.280000000000000,1.111428571428570,1.280000000000000,0.571428571428571,1.276666666666670,0.537142857142857,1.266666666666670,0.522857142857143,1.246666666666670,0.511428571428571,1.246666666666670,0.485714285714286,1.260000000000000,0.451428571428571,1.286666666666670,0.437142857142857,1.330000000000000,0.437142857142857,1.336666666666670,0.425714285714286,1.336666666666670,0.437142857142857,1.340000000000000,0.460000000000000,1.340000000000000,0.477142857142857,1.340000000000000,0.497142857142857,1.346666666666670,0.528571428571429,1.346666666666670,0.554285714285714,1.346666666666670,0.580000000000000,1.356666666666670,0.608571428571429,1.356666666666670,0.657142857142857,1.380000000000000,0.668571428571429,1.416666666666670,0.674285714285714,1.410000000000000,0.691428571428571,1.406666666666670,0.708571428571429,1.396666666666670,0.717142857142857,1.346666666666670,0.725714285714286,1.346666666666670,0.822857142857143,1.390000000000000,0.822857142857143,1.396666666666670,0.822857142857143,1.416666666666670,0.831428571428571,1.446666666666670,0.831428571428571,1.476666666666670,0.837142857142857,1.486666666666670,0.814285714285714,1.496666666666670,0.797142857142857,1.496666666666670,0.777142857142857,1.520000000000000,0.751428571428571,1.520000000000000,0.725714285714286,1.516666666666670,0.702857142857143,1.510000000000000,0.660000000000000,1.510000000000000,0.677142857142857,1.506666666666670,0.648571428571429,1.486666666666670,0.605714285714286,1.450000000000000,0.565714285714286,1.406666666666670,0.528571428571429,1.420000000000000,0.331428571428571,1.316666666666670,0.331428571428571,1.296666666666670,0.331428571428571,1.276666666666670,0.317142857142857,1.240000000000000,0.317142857142857,1.226666666666670,0.325714285714286,1.206666666666670,0.331428571428571,1.186666666666670,0.342857142857143,1.160000000000000,0.331428571428571,1.126666666666670,0.322857142857143,1.090000000000000,0.317142857142857,1.070000000000000,0.322857142857143,1.050000000000000,0.342857142857143,0.996666666666667,0.334285714285714,1.000000000000000,0.300000000000000,0.990000000000000,0.271428571428571,1.020000000000000,0.271428571428571,1.076666666666670,0.265714285714286,1.140000000000000,0.265714285714286,1.206666666666670,0.245714285714286,1.246666666666670,0.257142857142857,1.316666666666670,0.265714285714286,1.320000000000000,0.254285714285714,1.320000000000000,0.231428571428571,1.310000000000000,0.214285714285714,1.290000000000000,0.194285714285714,1.270000000000000,0.177142857142857,1.246666666666670,0.168571428571429,1.220000000000000,0.168571428571429,1.176666666666670,0.171428571428571,1.146666666666670,0.180000000000000,1.126666666666670,0.185714285714286,1.106666666666670,0.194285714285714,1.090000000000000,0.202857142857143,1.076666666666670,0.214285714285714,0.916666666666667,0.214285714285714,0.896666666666667,0.237142857142857,0.900000000000000,0.257142857142857,0.906666666666667,0.751428571428571,0.870000000000000,0.794285714285714,0.786666666666667,0.848571428571429,0.820000000000000,0.271428571428571,0.810000000000000,0.265714285714286,0.786666666666667,0.271428571428571,0.710000000000000,0.300000000000000,0.676666666666667,0.308571428571429,0.656666666666667,0.325714285714286,0.656666666666667,0.351428571428571,0.650000000000000,0.382857142857143,0.656666666666667,0.420000000000000,0.656666666666667,0.442857142857143,0.656666666666667,0.468571428571429,0.660000000000000,0.505714285714286,0.650000000000000,0.537142857142857,0.646666666666667,0.565714285714286,0.670000000000000,0.600000000000000,0.696666666666667,0.631428571428571,0.726666666666667,0.648571428571429,0.726666666666667,0.854285714285714,0.676666666666667,0.848571428571429,0.520000000000000,0.848571428571429,0.520000000000000,0.777142857142857,0.520000000000000,0.760000000000000,0.516666666666667,0.711428571428571,0.556666666666667,0.691428571428571,0.550000000000000,0.657142857142857,0.520000000000000,0.648571428571429,0.516666666666667,0.605714285714286,0.540000000000000,0.582857142857143,0.540000000000000,0.545714285714286,0.546666666666667,0.497142857142857,0.536666666666667,0.462857142857143,0.540000000000000,0.437142857142857,0.540000000000000,0.411428571428571,0.530000000000000,0.385714285714286,0.490000000000000,0.374285714285714,0.490000000000000,0.185714285714286,0.556666666666667,0.185714285714286,0.540000000000000,0.128571428571429,0.516666666666667,0.160000000000000,0.496666666666667,0.094285714285714,0.540000000000000,0.074285714285714,0.810000000000000,0.074285714285714,0.843333333333333,0.074285714285714,0.890000000000000,0.102857142857143,0.926666666666667,0.102857142857143,0.980000000000000,0.097142857142857,1.000000000000000,0.057142857142857,0.990000000000000,0.014285714285714,0.943333333333333,-0.014285714285714,0.890000000000000,-0.014285714285714,0.843333333333333,0.020000000000000,0.800000000000000,0.008571428571429,0.516666666666667,0.008571428571429,0.496666666666667,0.000000000000000,0.486666666666667,-0.311428571428571,0.516666666666667,-0.300000000000000,0.586666666666667,-0.302857142857143,0.606666666666667,-0.302857142857143,0.620000000000000,-0.300000000000000,0.536666666666667,-0.302857142857143];
    return(\%s);
}

1;
