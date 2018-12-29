#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';

chomp(my $input = <STDIN>);
my ($a, $b, $c) = split(/ /, $input);
my $res = 0;
if ($c <= $a + $b){
    $res = $c + $b;
}else{
    $res =  $a + $b + 1 + $b;
}
say "$res";
