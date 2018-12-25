#!/usr/bin/env perl

use strict;
use warnings;

chomp(my $n = <STDIN>);
my@nums = split(//, $n);
my $count = 0;
for my $i (@nums){
    if ($i == '2'){
        $count++;
    }
}
print "$count\n";
