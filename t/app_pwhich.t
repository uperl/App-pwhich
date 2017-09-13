use Test2::V0 -no_srand => 1;
use App::pwhich;
use Test::Script;
use File::Which qw( which );
use File::Basename qw( basename );
use File::Temp ();

subtest 'script can find perl' => sub {

  my $perl       = basename $^X;
  my $which_perl = which "$perl";
  
  unless(defined $which_perl)
  {
    $perl       = 'perl';
    $which_perl = which $perl;
  }
  
  note "perl       = $perl";
  
  skip_all 'File::Which cannot find perl' unless defined $which_perl;

  note "which perl = $which_perl";

  script_runs(
    [ 'bin/pwhich', $perl ],
    'script did not fail',
  );
  
  script_stdout_is "$which_perl\n";

};

subtest 'script can fail to find an executable' => sub {

  my $bogus;
  
  do {
  
    $bogus = basename File::Temp::tempnam(".","bogus");
  
  } while(which $bogus);

  note "bogus = $bogus";

  script_runs(
    [ 'bin/pwhich', $bogus ],
    { exit => 1 },
    'script did not find bogus command',
  );
  
  script_stdout_is '';
  script_stderr_like qr{no $bogus in PATH};

};

done_testing;
