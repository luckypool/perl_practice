#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

my $x = '12ab34ba5';
my @num = split /(a|b)+/, $x;
print Dumper \@num;

my @num2 = split /(?:a|b)+/, $x;
print Dumper \@num2;

