#!/usr/bin/perl
use strict;
use warnings;

use Params::Validate;

use Data::Dumper;

sub hoge {
    my $params = Params::Validate::validate(@_, {
            hoge => 1,
            fuga => 1,
            piyo => 0,
        });
    print Dumper $params;
}


hoge(hoge=>'hoge', piyo=>'fuga', );

