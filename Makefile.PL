use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'YAPC::Europe::UGR',
    AUTHOR              => 'UGR + Barcelona.pm + Madrid.pm',
    VERSION_FROM        => 'lib/YAPC/Europe/UGR.pm',
    ABSTRACT_FROM       => 'lib/YAPC/Europe/UGR.pm',
    # LICENSE             => '',
    # PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'Test::Pod' => 0,
        'Test::Spelling' => 0,
        'Test::PureASCII' => 0,
        'version' => 0,
        'experimental' => 0,
        'App::pod2pdf' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'YAPC-Europe-UGR*' },
    (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
    'meta-spec' => { version => 2 },
     resources => {
         repository => {
             type => 'git',
             url  => 'https://github.com/oslugr/yapc-eu.git',
             web  => 'https://github.com/oslugr/yapc-eu',
         },
     }})
     : ()
),
);

sub MY::postamble {
    return <<'MAKE_FRAG';
pdf:
	pod2pdf @pod2pdf.conf lib/YAPC/Europe/UGR.pm> UGR.pdf
MAKE_FRAG
  }
