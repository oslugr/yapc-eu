use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'YAPC::Europe::UGR',
    AUTHOR              => 'UGR+ Barcelona.pm + Barcelona.pm',
    VERSION_FROM        => 'lib/YAPC/Europe/UGR.pod',
    ABSTRACT_FROM       => 'lib/YAPC/Europe/UGR.pod',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
	'Test::Pod' => 0,
        'version'    => 0
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'YAPC-Europe-UGR*' },
);
