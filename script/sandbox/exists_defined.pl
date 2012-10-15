#!/usr/bin/perl
use strict;
use warnings;

use Params::Validate;

use Data::Dumper;

my $hoge = {
    hoge => 1,
    piyo => '',
};
my $fuga = { fuga => undef };


print 'exists' . Dumper exists $hoge->{hoge};
print 'exists' . Dumper exists $hoge->{piyo};
print 'exists' . Dumper exists $hoge->{fuga};
print 'exists' . Dumper exists $fuga->{fuga};

print 'defined' . Dumper defined $hoge->{hoge};
print 'defined' . Dumper defined $hoge->{piyo};
print 'defined' . Dumper defined $hoge->{fuga};
print 'defined' . Dumper defined $fuga->{fuga};
