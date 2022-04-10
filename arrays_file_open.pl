use strict;
use warnings;

#Disables output buffering
$|=1;

sub main {
    # -f finds a file

    #Array comma separated
    my @files = (
	    "/home/shottie/perl-projects/home.html",
            "dl_images.pl",
	    "hello_world.pl",
	    "goodbye.pl",
    );

    foreach my $file(@files) {
        if(-f $file) {
            print "Found file: $file\n";    
        }
        else {
            print "File not found: $file\n";
        }
    }
}


main();
