package RT::Extension::ResetPassword;

use strict;
use warnings;

our $VERSION = '0.06';

=head1 NAME

RT::Extension::ResetPassword - add "forgot your password?" link to RT instance

=head1 DESCRIPTION

This extension for RT adds a new "Forgot your password?" link to the front
of your RT instance. Any user can request that RT send them a password
reset token by email.  RT will send the user a one-time URL which he or
she can use to reset her password. This extension allows only users that
already have passwords reset their passwords by email.
There isn't yet an option to only allow privileged or unpriviliged users
to reset their passwords.

=head1 INSTALLATION

=over

=item C<perl Makefile.PL>

=item C<make>

=item C<make install>

May need root permissions

=item C<make initdb>

Only run this the first time you install this module.

If you run this twice, you may end up with duplicate data
in your database.

If you are upgrading this module, check for upgrading instructions
in case changes need to be made to your database.

=item Edit your F</opt/rt4/etc/RT_SiteConfig.pm>

If you are using RT 4.2 or greater, add this line:

    Plugin('RT::Extension::ResetPassword');

For RT 3.8 and 4.0, add this line:

    Set(@Plugins, qw(RT::Extension::ResetPassword));

or add C<RT::Extension::ResetPassword> to your existing C<@Plugins> line.

=item Clear your mason cache

    rm -rf /opt/rt4/var/mason_data/obj

=item Restart your webserver

=back

=head1 UPGRADING

If you are upgrading from version 0.05, you will need to run C<make
initdb> as documented in L<INSTALLATION> to install the Template used by
this Extension.

=head1 CONFIGURATION

The contents of the email sent to users can be found in the global
PasswordReset template (do not confuse this with the core PasswordChange
template).

=head1 AUTHOR

Jesse Vincent <jesse at bestpractical.com>

=head1 LICENSE AND COPYRIGHT

Copyright 2006-2014 Best Practical Solutions, LLC.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

1;
