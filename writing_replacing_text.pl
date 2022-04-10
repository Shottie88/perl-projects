use strict;
use warnings;

$|=1;

sub main {
    my $input = "/home/shottie/perl-projects/home.html";
    open(INPUT, $input) or die ("Input file $input not found.\n");

    my $output = "/home/shottie/perl-projects/output.txt";
    open(OUTPUT, '>'.$output) or die "Can't create $output.\n";

    while(my $line = <INPUT>){

	if($line =~ /\bescort\b/){
	    $line =~ s/\btarget\b/TARGET/ig;
            print OUTPUT $line;
	}
    }

    close(INPUT);
    close(OUTPUT);
}

main();
