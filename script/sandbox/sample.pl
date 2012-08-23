#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

my $array1= [qw/aa bb cc/];
my @array2 = qw/aa bb cc/;

print Dumper([qw/aa bb cc/]);
print Dumper(qw/aa bb cc/);

