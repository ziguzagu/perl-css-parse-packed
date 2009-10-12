use strict;
use warnings;

use Test::Base;
use CSS;

sub selector {
    my $selector = filter_arguments;
    my $css = CSS->new({ parser => 'CSS::Parse::Packed' });
    $css->parse_string($_) for @_;
    $css->get_style_by_selector($selector);
}

sub styles {
    my $css = CSS->new({ parser => 'CSS::Parse::Packed' });
    $css->parse_string($_) for @_;
    $css->output;
}

filters {
    input    => [ qw( lines ) ],
    expected => [ qw( styles ) ],
};
run_compare;

__END__

===
--- input selector=body
body { background-color:#FFFFFF; }
body { padding:6px; }
--- expected
body { padding: 6px; background-color: #FFFFFF }
