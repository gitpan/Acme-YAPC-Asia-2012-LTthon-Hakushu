package Acme::YAPC::Asia::2012::LTthon::Hakushu;
use 5.008_001;
use strict;
use warnings;

our $VERSION = '0.01';

use Furl;

sub push {
    my($class) = @_;

    my $api = 'http://hachiojipm.org/hakushu/';

    my $ua = Furl->new(agent => sprintf '%s/%s', $class, $class->VERSION);

    my $res = $ua->post($api, [], [ send => 1 ]);

    print $res->code, "\n";
}

1;
__END__

=head1 NAME

Acme::YAPC::Asia::2012::LTthon::Hakushu - tap the "hakushu" (like!) button for YAPC::Asia 2012, LTthon

=head1 VERSION

This document describes Acme::YAPC::Asia::2012::LTthon::Hakushu version 0.01.

=head1 SYNOPSIS

    use Acme::YAPC::Asia::2012::LTthon::Hakushu;

    Acme::YAPC::Asia::2012::LTthon::Hakushu->push();

=head1 DESCRIPTION

This is an acme module for YAPC::Asia 2012, L<http://yapcasia.org/2012/>.

=head1 INTERFACE

=head2 Class Methods

=head3 C<< push() >>

Push the button!

=head1 DEPENDENCIES

Perl 5.8.1 or later.

=head1 BUGS

All complex software has bugs lurking in it, and this module is no
exception. If you find a bug please either email me, or add the bug
to cpan-RT.

=head1 SEE ALSO

L<perl>

=head1 AUTHOR

<<YOUR NAME HERE>> E<lt><<YOUR EMAIL ADDRESS HERE>>E<gt>

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2012, <<YOUR NAME HERE>>. All rights reserved.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
