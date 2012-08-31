package Practice::Constants;
use strict;
use warnings;

use base q/Exporter/;

my $CONSTANTS;

BEGIN {
    my @hoge_list = qw/hoge piyo/;
    my @fuga_list = qw/fuga hage/;
    $CONSTANTS = {
        ALL_LIST => [@hoge_list, @fuga_list],
        HOGE_LIST => [@hoge_list],
        FUGA_LIST => [@fuga_list],
    };
};

use constant $CONSTANTS;
our @EXPORT_OK = keys $CONSTANTS;

