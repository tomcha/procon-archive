#!/usr/bin/env perl

use strict;
use warnings;

chomp(my $input = <STDIN>);
my ($n, $h, $w) = split(/ /, $input);
my @alloys;
for (1..$n){
    $input = <STDIN>;
    my @size = split(/ /, $input);
    push(@alloys, \@size);
}

my $count = 0;
for my $alloy (@alloys){
    if ($alloy->[0] >= $h && $alloy->[1] >= $w){
        $count++;
    }
}
print "$count\n";
