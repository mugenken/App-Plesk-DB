#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'App::Plesk::DB' ) || print "Bail out!\n";
}

diag( "Testing App::Plesk::DB $App::Plesk::DB::VERSION, Perl $], $^X" );
