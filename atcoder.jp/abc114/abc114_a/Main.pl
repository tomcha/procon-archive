#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';

chomp(my $i = <STDIN>);
if( $i == 3 || $i == 5 || $i == 7){
    say 'YES';
}
else{
    say 'NO';
}

