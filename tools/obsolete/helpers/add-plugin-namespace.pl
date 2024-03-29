#! /usr/bin/perl -w
use warnings;
use strict;

open my $fh, '<', $ARGV[0] or die;
$/ = undef;
my $data = <$fh>;
close $fh;

## includes
$data =~ s/^#include <Kaleidoscope\//#include <kaleidoscope\//mg;
$data =~ s,^#include <kaleidoscope/([^/]+)\.h>,#include <kaleidoscope/plugin/$1.h>,mg;
## fix kaleidoscope/hid.h includes
$data =~ s,^#include <kaleidoscope/plugin/hid.h>,#include <kaleidoscope/hid.h>,mg;
## plugin namespace
$data =~ s#^namespace kaleidoscope \{#namespace kaleidoscope {\nnamespace plugin {#m;
## close the namespace
$data =~ s#^\};\n+\};?\n#};\n}\n}\n#m;
if ($ARGV[0] =~ /\.cpp/) {
    $data =~ s#^\}\n\s?};?\n#}\n\n}\n}\n#m;
}
## singleton
$data =~ s#^(extern kaleidoscope::)#$1plugin::#mg;
$data =~ s#^kaleidoscope::([^\s]+) #kaleidoscope::plugin::$1 #mg;

open my $ofh, '>', $ARGV[0] or die;
print $ofh $data;
close $ofh;
