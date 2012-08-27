#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

sub hoge {
    my $hoge => 'hoge';
}

sub hoge2 {
    my $hoge = { 
        'fuga',
        hoge => 'hoge'
    };
}

my $fuga = 'fuga';

print Dumper hoge;
print Dumper hoge2;
print Dumper $fuga;


