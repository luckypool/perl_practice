#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

=cut here
sub hogehoge {
    return [
    { 
        name  => 1,
        title => 2,
    },
    {
        name  => 3,
        title => 4,
    },
];
}

my $hoge = hogehoge;
print Dumper $hoge;

my @verbs = map {
    +{
        name => $_->{name},
        title => $_->{title}
    }
} @{&hogehoge};


print Dumper \@verbs;

=cut

my @dummy =
    qw{
        hoge
        fuga
        piyo
        ppy
        jojo
        jojolion
        piggy
    };

print Dumper \@dummy;

use constant {
    _LIMIT => 3
};

my @another_dummy = map { $dummy[$_] } (0.._LIMIT);
print Dumper \@another_dummy;

