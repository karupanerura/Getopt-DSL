# NAME

Getopt::DSL - It's new $module

# SYNOPSIS

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

# DESCRIPTION

Getopt::DSL is inspied by [Click](http://click.pocoo.org/5/).

# LICENSE

Copyright (C) karupanerura.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

karupanerura <karupa@cpan.org>
