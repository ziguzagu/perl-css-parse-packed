use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'CSS::Parse::Packed',
    AUTHOR              => 'Hiroshi Sakai <ziguzagu@cpan.org>',
    VERSION_FROM        => 'lib/CSS/Parse/Packed.pm',
    ABSTRACT_FROM       => 'lib/CSS/Parse/Packed.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::Base' => 0,
        'CSS'        => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'CSS-Parse-Packed-*' },
);
