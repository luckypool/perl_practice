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

sub check_hoge {
    my $self = shift;
    my ($param) = @_;
    return unless $self->hoge->is_hoge($param);
    return 1;
}

sub check_fuga {
    my $self = shift;
    my ($param) = @_;
    return unless $self->fuga->is_fuga($param);
    return 1;
}

1;
