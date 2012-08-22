package MockPractice;
use strict;
use warnings;

use MockPractice::CheckHoge;
use MockPractice::CheckFuga;

use base qw/Class::Accessor::Fast/;

sub new {
    my $class = shift;
    my hoge = MockPractice::CheckHoge->new;
    my $self = {
        hoge => $hoge,
        fuga => MockPractice::CheckFuga->new;
    };
}

1;
