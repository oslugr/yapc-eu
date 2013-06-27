use strict;
use warnings;
use Test::More;

eval "use Test::Spelling";
plan skip_all => "Test::Spelling required for testing POD spelling" if $@;

my @ignore = (<<EOI =~ /^\s*(.*)\s*$/mg);
 AMS
 Abba
 Albergue
 Avda
 BHX
 Blulabs
 Bockenheim
 CDG
 CEC
 CIG
 CPH
 Codeko
 Constitución
 ECAL
 ETSIIT
 EvoStar
 FOSDEM
 FRA
 GeNeura
 Generalife
 Granadas
 Inteligence
 JJ
 LIS
 Libre
 MUC
 Macia
 Mallorca
 Merelo
 Mora
 Málaga
 NotBarraLibreCamp
 OSL
 PDF
 PHP
 PPSN
 Palacio
 Pensiones
 Puerta
 RIX
 Saalbau
 Severo
 Telekom
 Titusbau
 Vincci
 Vía
 WLAN
 Westend
 WiFi
 YAPC
 brian
 consortiums
 coworking
 de
 devroom
 devrooms
 grafitti
 grafittis
 hackathon
 hackathons
 identi
 las
 multi
 pdf
 pre
 scalable
 tapa
 tchochkes
 tubo
EOI

local $ENV{LC_ALL} = 'C';
add_stopwords(@ignore);
all_pod_files_spelling_ok();

