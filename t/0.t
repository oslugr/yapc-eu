use Test::Pod tests => 1;

my $dir = -d "../lib" ? "../lib": "text";
my $file = "YAPC/Europe/UGR.pod";

pod_file_ok( "$dir/$file", "Valid POD file" );
