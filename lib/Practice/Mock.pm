package Practice::Mock;
use strict;
use warnings;

use Practice::Mock::CheckHoge;
use Practice::Mock::CheckFuga;

use base qw/Class::Accessor::Fast/;
__PACKAGE__->mk_accessors(qw/hoge fuga/);

sub new {
    my $class = shift;
    my $self = {
        hoge => Practice::Mock::CheckHoge->new,
        fuga => Practice::Mock::CheckFuga->new,
    };
    return bless $self, $class;
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
