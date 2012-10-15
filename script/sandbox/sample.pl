#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

warn Data::Dumper::Dumper int(rand(10000));
die;

my $array1= [qw/aa bb cc/];
my @array2 = qw/aa bb cc/;

print Dumper([qw/aa bb cc/]);
print Dumper(qw/aa bb cc/);


sub hoge{
    return int(rand(100));
};

for (1..10){
    print Dumper hoge;
}

print Dumper sprintf('%05s', int(rand(100000)));
print Dumper sprintf('%5s', int(rand(100000)));


my $time = time;
my $rand = int(rand(1000));

my $hex= sprintf("%x",$time);
print Dumper $hex;

#print Dumper hex($hex);

use Time::Local;
my $epoch = timelocal(0, 0, 0, 3, 3-1, 2004);

print Dumper $time;
my $timestamp = $time - $epoch;

my $flag = 1;

my $sum = $timestamp * 2**12 + $flag * 2**11 + $rand;

print Dumper "++  ". $sum;
my $timestamp_ = $sum >> 12;
print Dumper $timestamp;
print Dumper $timestamp_;

my $flag_ = (int ($sum - $timestamp_*2**12) >> 11 );

print Dumper $flag;
print Dumper $flag_;

print Dumper (int ($sum - $timestamp_*2**12 - $flag_*2**11) );
print Dumper $rand;

print Dumper $rand % 100;
print Dumper $sum % 100;


#print Dumper sprintf("%041b",$timestamp*2**12);
#print Dumper sprintf("%041b",$flag*2**11);
#print Dumper sprintf("%041b",$rand);


print Dumper timelocal(0, 0, 12, 8, 10-1, 2012);

print Dumper '"""""""""""';
my $diff= 0;
for(0..1000){
    my $count_s = 0;
    my $count_r = 0;
    for(0..1000){
        my $r = int(rand(1000));
        my $t = time - $epoch;
        my $f = 1;
        my $s = $t*2**12 + $f*2**11 + $r;
        $count_s++ if (($s % 100) > 95);
        $count_r++ if (($r % 100) > 95);
    }
    $diff += $count_s-$count_r;
}
print Dumper $diff;

