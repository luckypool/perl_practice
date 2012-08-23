use strict;
use warnings;

use Test::More;

BEGIN {
    use_ok 'MockPractice::CheckHoge::Piyo';
};

my $class = 'MockPractice::CheckHoge::Piyo';

my $piyo = new_ok $class;

subtest 'method_check' => sub {
    my @methods = qw/new is_piyo/;
    can_ok $class, @methods;
};

done_testing;
