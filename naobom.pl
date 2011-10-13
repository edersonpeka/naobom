#!/usr/bin/perl

$num_args = $#ARGV + 1;
if ($num_args != 1) {
  print "\nUsage: naobom.pl filename\n";
  exit;
}

$filename=$ARGV[0];
open(FILE, $filename) || die("Cannot open file $filename for reading.");
@file=;
$file[0] =~ s/^\xEF\xBB\xBF//;
close(FILE);

open(FILE, ">>$filename") || die("Cannot open file $filename for writing.");
print FILE @file;
close(FILE);

print "\nDone.\n";
