#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

use Mixi::HTML;

my $int_zero = int(0);
my $zero = 0;
my $zero_ = '0.00';
my $str_zero = '0';

print Dumper $int_zero if $int_zero;
print Dumper $zero if $zero;
print Dumper $zero_ if $zero_;
print Dumper $str_zero if $str_zero;


my $result = Mixi::HTML::make_option('blank opt', undef, {1 => 'v1', 2 => 'v2', 3 => 'v3'}, );
print Dumper $result;
$result = Mixi::HTML::make_option(undef, undef, {0 => 'v0', 1 => 'v1', 2 => 'v2', 3 => 'v3'}, );
print Dumper $result;

