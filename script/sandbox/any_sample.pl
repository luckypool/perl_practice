#!/usr/bin/perl
use strict;
use warnings;

use List::MoreUtils qw(any all);

use Data::Dumper;

sub hoge_all {
    all { $_ < 10 } 1..10;
}

sub hoge_any {
    any { $_ < 10 } 1..10;
}

print Dumper &hoge_any;
print Dumper &hoge_all;

