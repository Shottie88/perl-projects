use strict;
use warnings;

$|=1;

sub main {
    my $file = "/home/shottie/perl-projects/hello_world.pl";

    open(INPUT, $file) or die ("Input file $file not found.\n");

    while(my $line = <INPUT>) {
        if($line =~/strict/) {
            print $line;
	}
    }

    close(INPUT);
}

main();
