use strict;
use warnings;

use Test::More;

BEGIN {
    use_ok 'MockPractice';
};

my $class = 'MockPractice';

my $obj = new_ok $class;

subtest 'method_check' => sub {
    my @methods = qw/new check_fuga check_hoge/;
    can_ok $class, @methods;
};

subtest 'test check_hoge function' => sub {
    my $res = $obj->check_hoge(1);
    is $res, 1;
    $res = $obj->check_hoge;
    is $res, undef;
};

subtest 'test check_fuga function' => sub {
    my $res = $obj->check_fuga(1);
    is $res, 1;
    $res = $obj->check_fuga;
    is $res, undef;
};

done_testing;
