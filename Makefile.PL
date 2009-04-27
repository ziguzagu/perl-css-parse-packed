use inc::Module::Install;
# metadataes
name 'CSS-Parse-Packed';
all_from 'lib/CSS/Parse/Packed.pm';
# dependencies
requires 'CSS';
# tests
tests 't/*.t';
use_test_base;
# misc
auto_include;
WriteAll;
