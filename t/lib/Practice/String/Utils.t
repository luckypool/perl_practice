use strict;
use warnings;

use Test::More;
use Test::MockObject;
use Data::Dumper;

use Jcode;

BEGIN {
    use_ok 'Practice::String::Utils';
};

my $class =  'Practice::String::Utils';

subtest q/class has these modules/ => sub {
    my $modules = [qw/
        convert_to_one_byte_numbers
    /];
    for(@$modules){
        can_ok($class, $_);
    }
    my $euc_string = Jcode->new('０９０', 'utf8')->euc;
    my $ret_string = $class->convert_to_one_byte_numbers(euc_string=>$euc_string);
    is $ret_string, '090';
    $euc_string = Jcode->new('0９０', 'utf8')->euc;
    is $ret_string, '090';
    $euc_string = Jcode->new('0ahあ９０', 'utf8')->euc;
    is $ret_string, '090';
};

done_testing;
