use strict;
use warnings;

use Test::More;

BEGIN {
    use_ok 'Practice::Mock::CheckFuga';
};

my $class = 'Practice::Mock::CheckFuga';

my $fuga = new_ok $class;

subtest 'method_check' => sub {
    my @methods = qw/new is_fuga/;
    can_ok $class, @methods;
};

subtest 'test is_fuga' => sub {
    is $fuga->is_fuga(1), 1;
    is $fuga->is_fuga, undef;
};


done_testing;
