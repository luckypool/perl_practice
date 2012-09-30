use strict;
use warnings;

use Test::More;
use Test::MockObject;
use Data::Dumper;

BEGIN {
    use_ok 'Practice::Memcached';
};

my $class =  "Practice::Memcached";

my $mmc = new_ok $class;

my $key = 'hoge';
my $value = 'fuga';

subtest q/new is ok?/ => sub {
    $mmc->set(key=>$key, value=>$value);

    my $got_value = $mmc->load_by_key(key=>$key);
    is $got_value, $value;
    my $got_and_delete = $mmc->load_by_key(key=>$key, auto_delete=>1);
    is $got_and_delete, $value;
    my $got_again = $mmc->load_by_key(key=>$key);
    is $got_again, undef;
};

done_testing;
