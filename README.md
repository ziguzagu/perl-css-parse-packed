# NAME

CSS::Parse::Packed - A CSS::Parse module packed duplicated selectors.

# SYNOPSIS

    use CSS;
    my $css = CSS->new({ parser => 'CSS::Parse::Packed' });

# DESCRIPTION

This module is a parser for CSS.pm. It parsing CSS by regular expression
based on CSS::Parse::Lite and packed duplicated selectors.

# EXAMPLE

Original is:

    body { background-color:#FFFFFF; font-size: 1em; }
    body { padding:6px; font-size: 1.5em; }

After parsing:

    body { padding: 6px; background-color: #FFFFFF; font-size: 1.5em }

# SEE ALSO

[CSS](http://search.cpan.org/perldoc?CSS), [CSS::Parse::Lite](http://search.cpan.org/perldoc?CSS::Parse::Lite)

# AUTHOR

Hiroshi Sakai  `<ziguzagu@cpan.org>`

# LICENCE AND COPYRIGHT

Copyright (c) 2007, Hiroshi Sakai `<ziguzagu@cpan.org>`. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See [perlartistic](http://search.cpan.org/perldoc?perlartistic).
