#!/usr/bin/perl
use strict;
use warnings;

use Params::Validate;

use Data::Dumper;

my $hoge = { hoge => 1 };
my $fuga = { fuga => undef };


print Dumper exists $hoge->{hoge};
print Dumper exists $hoge->{fuga};
print Dumper exists $fuga->{fuga};

print Dumper defined $hoge->{hoge};
print Dumper defined $hoge->{fuga};
print Dumper defined $fuga->{fuga};
