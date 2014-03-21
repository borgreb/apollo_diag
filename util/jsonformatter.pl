#!/usr/bin/perl

#use lib "/opt/local/lib/perl5/site_perl/5.8.9/";
use lib "/uhome/skrassiev/usr/local/perl/lib/JSON";

use JSON;

$json_text = (<>);

$json = new JSON;

$perl_scalar = $json->decode($json_text);

$json_text = $json->pretty->encode($perl_scalar, {ascii => 1});

print $json_text . "\n";



