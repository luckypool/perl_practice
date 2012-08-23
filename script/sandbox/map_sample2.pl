#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

my $aref = [
    [qw/hoge hoge hoge/],
    [qw/fuga fuga fuga/],
    [qw/piyo piyo piyo/],
];


my @hoge = map { $_ } @{$aref};
print  Dumper \@hoge;

my @hoge2 = map { $_->[0] } @{$aref};
print Dumper \@hoge2;

my @hoge3 = map { $_[0]} @{$aref};
print Dumper \@hoge3


