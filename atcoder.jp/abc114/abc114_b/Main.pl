#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';

chomp(my $str = <STDIN>);
my @nums = split(//, $str);
my $size = @nums;
my $result = 1000;
for my $i (0..($size - 3)){
    my $j = $nums[$i] . $nums[$i + 1] . $nums[$i + 2];
    $result = abs($j - 753) if (abs($j - 753) < $result);
}
say $result;
