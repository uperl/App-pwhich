use Test2::V0 -no_srand => 1;
use Test::Script;

# Can we find the tool with the command line version?
script_runs(
  [ 'bin/pwhich', 'perl' ],
  'Found perl with pwhich',
);

done_testing;
