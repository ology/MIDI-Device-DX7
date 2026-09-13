package MIDI::Device::DX7;

# ABSTRACT: Yamaha DX7 MIDI Metadata

our $VERSION = '0.0100';

use Moo;
extends 'MIDI::Device';

=encoding utf8

=head1 SYNOPSIS

  use MIDI::Device::DX7 ();
  my $device = MIDI::Device::DX7->new;
  print "Device: ", join(", ", $device->name, $device->manufacturer), "\n";
  my $ccs = $device->cc; # [ { number => 1, name => 'Modulation' }, ... ]

=head1 DESCRIPTION

Yamaha DX7 synthesizer device metadata and control change messages.

=head1 ATTRIBUTES

=head2 module

The name of this module: C<'MIDI::Device::DX7'>.

=cut

has module => (
    is      => 'ro',
    default => 'MIDI::Device::DX7',
);

=head2 name

Device name: C<dx7>

=cut

has name => (
    is      => 'ro',
    default => 'dx7',
);

=head1 METHODS

=head2 new

  $device = MIDI::Device::DX7->new;

Return a new C<MIDI::Device::DX7> object.

=cut

1;
