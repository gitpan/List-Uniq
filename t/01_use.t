#
# $Id: 01_use.t 4065 2004-11-01 15:38:09Z james $
#

use strict;
use warnings;

BEGIN {
    use Test::More;
    our $tests = 2;
    eval "use Test::NoWarnings";
    $tests++ unless( $@ );
    plan tests => $tests;
}

use_ok('List::Uniq');
is($List::Uniq::VERSION, '0.11', 'check module version');

#
# EOF
