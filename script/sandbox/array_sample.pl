#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

my $fuga = [
        {
            href=>"hoge1",
            title=>"huga",
        },
        {
            href=>"hoge2",
            title=>"huga",
        },
        {
            href=>"hoge3",
            title=>"huga",
        },
    ];

for my $i (@$fuga) {
    if ($i->{href} =~/hoge1/){
        $i->{active} = 1;
    }
    print Dumper $i;
}


print Dumper $ENV{TMPDIR};
