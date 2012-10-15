#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;


for(1..1000){
    my $rand = int(rand(100));
    print Dumper $rand if $rand>=100;
}

