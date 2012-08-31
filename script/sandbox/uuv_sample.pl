#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

use constant {
    REGEXP => [qw/hoge fuga piyo/],
};

sub hoge {
    warn Dumper $_[0];
    warn Dumper $_[1];
    return join ( '', @_ );
}

sub fuga {
    my $reg = join('|', @{REGEXP()});
    my $re = qr/\A($reg)\z/;
    return if $_[0] =~ $re and $_[1] =~$re;
}

my $hoge = 'hoge';
my $fuga = 'fuga';

warn Dumper hoge($hoge,$fuga);
warn Dumper hoge($hoge);

my $res = fuga($fuga, $hoge);
warn Dumper $res;
$res = fuga($fuga, '');
warn Dumper $res;

