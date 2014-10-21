#
# $Id: 01_use.t 4355 2008-07-22 12:22:37Z james $
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
is($List::Uniq::VERSION, '0.12', 'check module version');

#
# EOF
