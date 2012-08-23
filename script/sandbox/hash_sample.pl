#!/usr/bin/perl
use strict;
use warnings;

use constant {
    NAME => 'name',
};

use Data::Dumper;

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

sub get_key_name {
    return NAME;
}

my @verbs = map {
    +{
        &get_key_name  => $_->{name},
        title => $_->{title}
    }
} @{&hogehoge};


print Dumper \@verbs;

