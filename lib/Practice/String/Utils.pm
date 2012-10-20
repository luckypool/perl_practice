package Practice::String::Utils;
use strict;
use warnings;
use Params::Validate;
use Jcode;

sub convert_to_one_byte_numbers {
    my $class = shift;
    my $params = Params::Validate::validate(@_,{
        euc_string => 1,
    });
    my $from_exp_euc = Jcode->new('０-９','utf8')->euc;
    my $to_exp_euc = Jcode->new('0-9','utf8')->euc;
    return Jcode->new($params->{euc_string}, 'euc')->tr($from_exp_euc, $to_exp_euc)->euc;
}

1;
