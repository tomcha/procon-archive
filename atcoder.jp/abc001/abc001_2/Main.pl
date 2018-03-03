#!/usr/bin/env perl

use strict;
use warnings;
use utf8;

my $m = <STDIN>;
my $vv;
if ($m < 100){
    $vv = 0;
}
elsif ($m <= 5000){
    $vv = int($m  / 100);
}
elsif ($m <= 30000){
    $vv = int($m / 1000) + 50;
}
elsif ($m <= 70000){
    $vv = int((int($m / 1000) - 30) / 5) + 80;
}
else{
    $vv = 89;
}

$vv = '0' . $vv if length $vv == 1;
print "$vv\n";
