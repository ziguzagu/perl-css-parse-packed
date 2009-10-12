use inc::Module::Install;
# metadataes
name 'CSS-Parse-Packed';
all_from 'lib/CSS/Parse/Packed.pm';
# dependencies
requires 'CSS' => '1.08';
# tests
tests 't/*.t';
author_tests 'xt';
use_test_base;
# misc
auto_include;
WriteAll;
