use strict;
use warnings;

use Test::More;
use Test::MockObject;
use Test::Memcached;
use Data::Dumper;

my $memd = Test::Memcached->new(
    options => {
        user => 'memcached-user',
    }
);
$memd->start;
my $port = $memd->option( 'tcp_port' );
Test::MockObject->new->fake_module('Practice::Memcached',
    _get_address => sub { return "localhost:$port"; }
);

BEGIN {
    use_ok 'Practice::Memcached';
};

my $class =  'Practice::Memcached';

my $key = 'hoge';
my $value = 'fuga';

subtest q/new is ok?/ => sub {
    my $cache_object = new_ok $class;
    $cache_object->set(key=>$key, value=>$value);
    my $got_value = $cache_object->load_by_key(key=>$key);
    is $got_value, $value;
    my $got_and_delete = $cache_object->load_by_key(key=>$key, auto_delete=>1);
    is $got_and_delete, $value;
    my $got_again = $cache_object->load_by_key(key=>$key);
    is $got_again, undef;
};

done_testing;
