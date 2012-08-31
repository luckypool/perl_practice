package Practice::Test::Timer;
use strict;
use warnings;
use Scope::Guard qw(guard);

my $TIMER;

sub load {
    print STDERR "Starting test at @{[ scalar localtime ]}\n";
    $TIMER = guard { 
        print STDERR "Ending test at @{[ scalar localtime ]}\n";
    };
}

# Global destruction... とか言われないためのハック
END {
    undef $TIMER;
}

1;
