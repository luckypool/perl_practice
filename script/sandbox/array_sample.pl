#!/usr/bin/perl
use strict;
use warnings;

use Data::Dumper;

my $fuga = [
        {
            href=>"hoge1",
            title=>"huga",
        },
        {
            href=>"hoge2",
            title=>"huga",
        },
        {
            href=>"hoge3",
            title=>"huga",
        },
    ];

for my $i (@$fuga) {
    if ($i->{href} =~/hoge1/){
        $i->{active} = 1;
    }
    print Dumper $i;
}


sub print_hoge {
    my ($param) = @_;
    print Dumper $param;
}

use Params::Validate;
sub validate_hoge {
    my $param = Params::Validate::validate(@_,{
            hii => 1,
            hog => 1,
            ho  => 0,
        });
    print Dumper $param;
}

my @hoge = (hige=>1, piyo=>3, fuga=>5);

print_hoge(\@hoge);
print_hoge(@hoge);

validate_hoge(hii=>1,hog=>'fuu');
my @p = (hii=>1,hog=>'fuu', ho=>234)
validate_hoge(@p);

