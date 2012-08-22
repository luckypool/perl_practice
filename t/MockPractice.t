use strict;
use warnings;

use Test::More;

BEGIN {
    use_ok 'MockPractice';
};

my $class = 'MockPractice';

my $hoge = new_ok $class;

subtest 'method_check' => sub {
    my @methods = qw/new check_fuga check_hoge/;
    can_ok $class, @methods;
};

done_testing;
