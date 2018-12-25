#!/usr/bin/env perl

use strict;
use warnings;

chomp(my $input = <STDIN>);
my ($n, $p) = split(/ /, $input);

if ($n == 1){
    print "$p\n";
    exit;
}

my $ans = 1;
my $i = 2;
my $pp = $p;
while ($i ** 2 <= $p){
#    print "$p % $i = " . ($p % $i) ."\n";
    if ($pp % $i == 0){
        if ($pp % ($i ** $n) == 0){
            $ans *= $i;
            $pp /= ($i ** $n);
        }
        else{
            $pp /= $i;
        }
    }
    else{
        $i++;
    }
}

print "$ans\n";
