#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

use constant {
    errors =>{
        hoge  => 1,
        fuga  => 1 << 1,
        piyo  => 1 << 2,
        piyo1 => 1 << 3,
        piyo2 => 1 << 4,
        piyo3 => 1 << 5,
        piyo4 => 1 << 6,
},
};

print Dumper errors;


my $e = errors->{hoge} | errors->{fuga};

print Dumper $e;
print Dumper ($e & errors->{fuga});
print Dumper ($e & errors->{hoge});

