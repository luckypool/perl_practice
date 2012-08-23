package MockPractice::CheckHoge;
use strict;
use warnings;

use MockPractice::CheckHoge::Piyo;

use base qw/Class::Accessor::Fast/;
__PACKAGE__->mk_accessors(qw/piyo/);

sub new {
    my $class = shift;
    my $piyo = MockPractice::CheckHoge::Piyo->new;
    my $self = {
        piyo => $piyo,
    };
    return bless $self, $class;
}

sub is_hoge {
    my $self = shift;
    my ($param) = @_;
    return 1 if $param;
    return;
}

sub is_hoge_piyo {
    my $self = shift;
    my ($param) = @_;
    return $self->piyo->is_piyo($param) if $param;
    return;
}

1;
