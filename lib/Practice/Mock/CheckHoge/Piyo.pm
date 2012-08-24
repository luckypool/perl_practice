package Practice::Mock::CheckHoge::Piyo;
use strict;
use warnings;

sub new {
    my $class = shift;
    return bless {}, $class;
}

sub is_piyo {
    my $self = shift;
    my ($param) = @_;
    return 1 if $param;
    return;
}

1;
