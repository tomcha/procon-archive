#!/usr/bin/env perl

use strict;
use warnings;

my $s = <STDIN>;
chomp $s;

my %answers = (
    'A' => 1,
    'B' => 2,
    'C' => 3,
    'D' => 4,
    'E' => 5,
);

my $result = $answers{$s};
print "$result\n";
