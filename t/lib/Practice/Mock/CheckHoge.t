use strict;
use warnings;

use Test::More;
use Test::MockObject;

BEGIN {
    use_ok 'Practice::Mock::CheckHoge';
};

my $class = 'Practice::Mock::CheckHoge';

my $hoge = new_ok $class;

sub __mock_is_piyo {
    Test::MockObject->new->fake_module(
        'Practice::Mock::CheckHoge::Piyo',
        is_piyo => sub { 1 },
    );
}

sub __mock_is_not_piyo {
    Test::MockObject->new->fake_module(
        'Practice::Mock::CheckHoge::Piyo',
        is_piyo => sub { undef },
    );
}

subtest 'method_check' => sub {
    my @methods = qw/new is_hoge/;
    can_ok $class, @methods;
};

subtest 'test is_hoge' => sub {
    is $hoge->is_hoge(1), 1;
    is $hoge->is_hoge, undef;
};

subtest 'test is_hoge_piyo' => sub {
    __mock_is_piyo;
    is $hoge->is_hoge_piyo(1), 1;
    __mock_is_not_piyo;
    is $hoge->is_hoge_piyo(1), undef;
    is $hoge->is_hoge_piyo, undef;
};

done_testing;
