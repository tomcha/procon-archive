#!/usr/bin/env perl

use strict;
use warnings;
use List::Util qw(min);

my $start = <STDIN>;
chomp $start;
my $goal = <STDIN>;
chomp $goal;
my $result;
#3->4
#1->9
#9->1

if ($start > $goal){
    $result = min(($start - $goal, $goal + 10 - $start)); 
}
else{
    $result = min(($goal - $start, $start + 10 - $goal));
}
print "$result\n";
