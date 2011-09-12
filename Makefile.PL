use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'App::Plesk::DB',
    AUTHOR              => q{Mugen Kenichi <<mugen.kenichi@uninets.eu>>},
    VERSION_FROM        => 'lib/App/Plesk/DB.pm',
    ABSTRACT_FROM       => 'lib/App/Plesk/DB.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'App-Plesk-DB-*' },
);
