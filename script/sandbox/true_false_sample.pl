#!/usr/bin/perl
use strict;
use warnings;

use List::MoreUtils qw(any all);

use Data::Dumper;

sub ichi {
    return 1;
}

sub zero {
    return 0;
}

sub false {
    return;
};

if (ichi){
    print Dumper 'hoge';
}

if (false){
    print Dumper 'hoge';
}

if (zero){
    print Dumper 'hoge';
}


print Dumper !1;

