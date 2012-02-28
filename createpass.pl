#!/usr/bin/perl

print "\n";

$pass = &gen_passwd();

print "\n\n";

sub gen_passwd
{
        my $count = 1;
        my $tab = 0;
        while($count < 46)
        {
	        my $i = 8;
        	my $passwd = "";
        	$pw_orig = "!$%\#()abcdefghijklmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ0123456789";
        	$leng = length($pw_orig);
        	while($i){
                	$random = int (rand $leng);
                	$passwd = "$passwd".substr($pw_orig,$random,1);
                	$i--;
        	}
        	print "$passwd\t";
        	$count++;
        	$tab++;
        	if ($tab == 6)
        	{
                	$tab = 0;
                	print "\n";
        	}
        }
}
