use strict;
use warnings;

use Test::More;

BEGIN {
    use_ok 'MockPractice::CheckFuga';
};

my $class = 'MockPractice::CheckFuga';

my $hoge = new_ok $class;

subtest 'method_check' => sub {
    my @methods = qw/new is_fuga/;
    can_ok $class, @methods;
};

done_testing;
