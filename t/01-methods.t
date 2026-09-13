#!/usr/bin/env perl
use strict;
use warnings;

# use Data::Dumper::Compact qw(ddc);
use Test::More;

my $module = 'MIDI::Device::DX7';

use_ok $module;

subtest device => sub {
    my $obj = new_ok $module;
    is $obj->name, 'dx7', 'name';
    is $obj->manufacturer, 'Yamaha', 'manufacturer';
    is $obj->port_in, 'generic', 'port_in';
    is $obj->port_out, 'generic', 'port_out';
    is_deeply $obj->cc->[0], { name => 'Bank Select', number => 0 }, 'cc';
};

done_testing();
