#
# $Id: 08_flatten.t 4065 2004-11-01 15:38:09Z james $
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

use_ok('List::Uniq', ':all');

# make sure that list refs in the input elements get flattened
my $in = [ qw|foo bar baz quux gzonk bar quux| ];
my @expected = qw|foo bar baz quux gzonk|;
is_deeply scalar uniq($in), \@expected,
    'one of two duplicates removed';

#
# EOF
