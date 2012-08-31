#!/usr/bin/perl
use strict;
use warnings;

use Params::Validate;

use Practice::Constants qw/ALL_LIST HOGE_LIST FUGA_LIST/;

use Data::Dumper;

sub fuga {
    my $reg = join('|', @{REGEXP()});
    my $re = qr/\A($reg)\z/;
    return if $_[0] =~ $re and $_[1] =~$re;
}

sub is_in_list {
    my $target = shift;
    my $reg = join('|', @{ALL_LIST()});
    return 1 if $target =~ qr/\A($reg)\z/;
    return;
}

sub my_join {
    my $param = Params::Validate::validate(@_,{
            first  => 1,
            second => 1,
            third  => 1,
        });
    return join('', ($param->{first}, $param->{third}, $param->{second}));
}
warn Dumper join('', ('piyo', 'hoge', 'dayo'));
my $second ='';
my $third ='';
if( defined $second and defined $third){
    warn Dumper my_join(first=>'piyo', second=>$second, third=>$third);
}

warn Dumper is_in_list('fuga');
warn Dumper is_in_list('piyo');

# warn Dumper ALL_LIST;
# warn Dumper HOGE_LIST;
# warn Dumper FUGA_LIST;

