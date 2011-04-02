
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Scalar::Util plugin for Template-Toolkit',
  'AUTHOR' => 'Alex J. G. Burzyński <ajgb@cpan.org>',
  'BUILD_REQUIRES' => {
    'File::Find' => '0',
    'File::Temp' => '0',
    'Module::Build' => '0.3601',
    'Template' => '0',
    'Test::More' => '0',
    'Test::NoWarnings' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31',
    'Module::Build' => '0.3601',
    'Scalar::Util' => '1.22',
    'Template' => '2.22'
  },
  'DISTNAME' => 'Template-Plugin-ScalarUtil',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Template::Plugin::ScalarUtil',
  'PREREQ_PM' => {
    'Scalar::Util' => '0',
    'Template::Plugin' => '0'
  },
  'VERSION' => '1.110920',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);


