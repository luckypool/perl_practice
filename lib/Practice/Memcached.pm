package Practice::Memcached;
use strict;
use warnings;
use Params::Validate;
use Cache::Memcached::Fast;
use base qw/Class::Accessor::Fast/;
__PACKAGE__->mk_ro_accessors(qw/cache/);

use constant {
    SERVER => 'localhost',
    PORT   => '11211',
    EXPIRAION_TIME => 10, # 10sec
};

sub new {
    my $class = shift;
    my $self = {
        cache => Cache::Memcached::Fast->new({
                servers => [
                    {address => join(':', (SERVER,PORT))},
                ],
            }),
    };
    return bless $self, $class;
}

sub set {
    my $self = shift;
    my %params = Params::Validate::validate(@_,{
        value => 1,
        key   => 1,
        expiration_time => {default=>EXPIRAION_TIME},
    });
    $self->cache->set($params{key}, $params{value}, $params{expiration_time});
}

sub load_by_key {
    my $self = shift;
    my %params = Params::Validate::validate(@_,{
        key => 1,
        auto_delete => 0,
    });
    my $value = $self->cache->get($params{key});
    $self->delete(key=>$params{key}) if exists $params{auto_delete};
    return $value;
}

sub delete {
    my $self = shift;
    my %params = Params::Validate::validate(@_,{
        key   => 1,
    });
    $self->cache->delete($params{key});
}

1;
