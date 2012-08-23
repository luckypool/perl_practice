use strict;
use warnings;

use Test::More;
use Test::MockObject;
use Data::Dumper;

BEGIN {
    use_ok 'MockPractice';
};

my $class = 'MockPractice';

#Test::MockObject->new->fake_new('MockPractice::CheckHoge');
#Test::MockObject->new->fake_new('MockPractice::CheckFuga');

my $obj = new_ok $class;

subtest 'method_check' => sub {
    my @methods = qw/new check_fuga check_hoge/;
    can_ok $class, @methods;
};

sub __mock_is_fuga {
    Test::MockObject->new->fake_module('MockPractice::CheckFuga',
        is_fuga => sub { 1 },
    );
}

sub __mock_is_not_fuga {
    Test::MockObject->new->fake_module('MockPractice::CheckFuga',
        is_fuga => sub { !1 },
    );
}

sub __mock_is_hoge {
    Test::MockObject->new->fake_module('MockPractice::CheckHoge',
        is_hoge => sub { 1 },
    );
}

sub __mock_is_not_hoge {
    Test::MockObject->new->fake_module('MockPractice::CheckHoge',
        is_hoge => sub { !1 },
    );
}
subtest 'test check_hoge function' => sub {
    __mock_is_hoge();
    my $res = $obj->check_hoge(1);
    is $res, 1;
    __mock_is_not_hoge();
    $res = $obj->check_hoge;
    is $res, undef;
};

subtest 'test check_fuga function' => sub {
    __mock_is_fuga();
    my $res = $obj->check_fuga(1);
    is $res, 1;
    __mock_is_not_fuga();
    $res = $obj->check_fuga;
    is $res, undef;
};

done_testing;
