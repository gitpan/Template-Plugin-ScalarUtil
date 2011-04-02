
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  'build_requires' => {
    'File::Find' => '0',
    'File::Temp' => '0',
    'Module::Build' => '0.3601',
    'Template' => '0',
    'Test::More' => '0',
    'Test::NoWarnings' => '0'
  },
  'configure_requires' => {
    'ExtUtils::MakeMaker' => '6.31',
    'Module::Build' => '0.3601',
    'Scalar::Util' => '1.22',
    'Template' => '2.22'
  },
  'dist_abstract' => 'Scalar::Util plugin for Template-Toolkit',
  'dist_author' => [
    'Alex J. G. Burzyński <ajgb@cpan.org>'
  ],
  'dist_name' => 'Template-Plugin-ScalarUtil',
  'dist_version' => '1.110920',
  'license' => 'perl',
  'module_name' => 'Template::Plugin::ScalarUtil',
  'recommends' => {},
  'recursive_test_files' => 1,
  'requires' => {
    'Scalar::Util' => '0',
    'Template::Plugin' => '0'
  },
  'script_files' => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
