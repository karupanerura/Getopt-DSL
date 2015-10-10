package Getopt::DSL;
use 5.008001;
use strict;
use warnings;

our $VERSION = "0.01";



1;
__END__

=encoding utf-8

=head1 NAME

Getopt::DSL - It's new $module

=head1 SYNOPSIS

    use Getopt::DSL;

    command option(
        count => { default => 1, help => 'Number of greetings.' },
        name  => { prompt => 'Your name', help => 'The person to greet.' },
    ) => sub {
        my $args = shift;
        for (1..$args->{count}) {
            say "Hello $args->{name}!";
        }
    };

    run_with_getopt(@ARGV) if $0 eq __FILE__;

=head1 DESCRIPTION

Getopt::DSL is inspied by L<Click|http://click.pocoo.org/5/>.

=head1 LICENSE

Copyright (C) karupanerura.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

karupanerura E<lt>karupa@cpan.orgE<gt>

=cut

