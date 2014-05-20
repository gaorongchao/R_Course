use strict;
use warnings;
use utf8;
use File::Basename;
use Data::Dumper;

my	$in_in = "AR.txt";
open  my $in, '<', $in_in or die "Fail open $in_in file\n";
while(my $line=<$in>)
{
	chomp $line;

}
close  $in;
