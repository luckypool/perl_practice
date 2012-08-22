use strict;
use warnings;

use Test::More;

BEGIN {
    use_ok 'MockPractice::CheckHoge';
};

my $class = 'MockPractice::CheckHoge';

my $hoge = new_ok $class;

subtest 'method_check' => sub {
    my @methods = qw/new is_hoge/;
    can_ok $class, @methods;
};

done_testing;
