#
# $Id: 11_recursive_arrayref.t 4496 2010-06-18 15:19:43Z james $
#

use strict;
use warnings;

use Test::More tests => 3;

use_ok('List::Uniq', ':all');

is_deeply scalar uniq('foo', [ [ [ 'wibble' ] ] ], 'bar', [], ['foo'], 'quux', [ [ 'gzonk' ] ] ),
    [ qw|foo wibble bar quux gzonk| ], 'recursive arrayrefs flatten properly';

is_deeply scalar uniq('foo', [ [ 'bar', 'baz' ] ] ), [ qw|foo bar baz| ],
    'multi-element recursive arrayrefs flatten properly';

#
# EOF
