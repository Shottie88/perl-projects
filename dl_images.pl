use strict;
use warnings;

use LWP::Simple;

sub main {
    print "Downloading....\n";
    #print get("http://www.caveofprogramming.com/");

    #my syntax shows first variable in the script.
    my $code = getstore("http://www.caveofprogramming.com/", "home.html");


    #Successful HTML dl will returned code 200
    if($code == 200) {
        print "Success\n";
    }
    else{
        print "Failed\n";
    }

    print "Finished\n";
}

main();
