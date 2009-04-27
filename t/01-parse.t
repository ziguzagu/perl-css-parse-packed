use strict;
use warnings;

use Test::Base;
use CSS;

sub styles {
    my $css = CSS->new({ parser => 'CSS::Parse::Packed' });
    $css->parse_string($_) for @_;
    $css->output;
}

filters {
    input => [ qw/lines styles/ ],
};
run_compare;

__END__

===
--- input
body { background-color:#FFFFFF; }
body { padding:6px; }
--- expected
body { padding: 6px; background-color: #FFFFFF }

===
--- input
.content { background-color:#FFFFFF; }
.content { padding:6px; }
--- expected
.content { padding: 6px; background-color: #FFFFFF }

===
--- input
#content { background-color:#FFFFFF; }
#content { padding:6px; }
--- expected
#content { padding: 6px; background-color: #FFFFFF }

===
--- input
body { background-color:#FFFFFF; font-size: 1em; }
body { padding:6px; font-size: 1.5em; }
--- expected
body { padding: 6px; background-color: #FFFFFF; font-size: 1.5em }

=== ignore @charset
--- input
@charset "utf-8";
body { color: #333333; }
--- expected
body { color: #333333 }

=== ignore @import
--- input
@import url("http://example.com/styles.css");
body { color: #333333; }
--- expected
body { color: #333333 }

=== ignore invalid styles
--- input
body { #333333 }
body { padding: 6px; }
--- expected
body { padding: 6px }
