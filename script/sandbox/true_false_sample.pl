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

sub str_zero {
    return '0';
}

sub phi {
    return '';
}

sub hoge{
    return 'hoge';
}

sub false {
    return;
};

if (ichi){
    print Dumper 'ichi';
}

if (false){
    print Dumper 'undef';
}

if (zero){
    print Dumper 'zero';
}

if (phi){
    print Dumper 'phi';
}

if (hoge){
    print Dumper 'hoge';
}

if (str_zero) {
    print Dumper 'str_zero';
}

if (phi eq ''){
    print Dumper "if phi";
}

if (zero eq '0'){
    print Dumper 'if eq 0';
}

if (defined zero) {
    print Dumper 'if defined zero';
}

my $d;

print Dumper 'yeah!' if not defined $d;

#print Dumper !1;

