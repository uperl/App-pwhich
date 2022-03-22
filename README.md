# pwhich ![static](https://github.com/uperl/App-pwhich/workflows/static/badge.svg) ![linux](https://github.com/uperl/App-pwhich/workflows/linux/badge.svg) ![macos](https://github.com/uperl/App-pwhich/workflows/macos/badge.svg) ![windows](https://github.com/uperl/App-pwhich/workflows/windows/badge.svg) ![cygwin](https://github.com/uperl/App-pwhich/workflows/cygwin/badge.svg) ![msys2-mingw](https://github.com/uperl/App-pwhich/workflows/msys2-mingw/badge.svg)

Pure Perl implementation of which

# SYNOPSIS

```
$ pwhich perl
$ pwhich -a perl          # print all matches
$ pwhich perl perldoc ... # look for multiple programs
$ pwhich -a perl perldoc ...
$ pwhich -s perl          # silent mode
```

# DESCRIPTION

`pwhich` is a command-line utility program for finding paths to other
programs based on the user's `PATH`. It is similar to the usually Unix
tool \`which', and tries to emulate its functionality, but is written
purely in Perl (uses the module `File::Which`), so is portable.

## Calling syntax

```
$ pwhich [-a] [-s] [-v] programname [programname ...]
```

## Options

- -a

    The option _-a_ will make `pwhich` print all matches found in the
    `PATH` variable instead of just the first one. Each match is printed
    on a separate line.

- -s

    No output, just return 0 if any of the executables are found, or 1
    if none are found.

- -v

    Prints version (of `File::Which`) and copyright notice and exits.

# SUPPORT

Bugs should be reported via the GitHub issue tracker
[https://github.com/uperl/App-pwhich/issues](https://github.com/uperl/App-pwhich/issues)
For other issues, contact the maintainer.

# SEE ALSO

- [pwhere](https://metacpan.org/pod/pwhere)
- [File::Which](https://metacpan.org/pod/File::Which)

    Perl API for [pwhich](https://metacpan.org/pod/pwhich)

- [App::pwhich](https://metacpan.org/pod/App::pwhich)

    Guts of this script.

# CAVEATS

This module does not know about built-in shell commands, as the built-in
command `which` and `where` usually do.

This module is fully supported back to Perl 5.8.1.  It may work on 5.8.0.

If you want these executables installed without the `p` prefix
(useful on platforms like windows that do not have their own
native which or where), set `PERL_APP_PWHICH_NO_PREFIX` to
`no-prefix` during install of this module.

# AUTHOR

Original author: Per Einar Ellefsen <pereinar@cpan.org>

Current maintainer: Graham Ollis <plicease@cpan.org>

Contributors:

Adam Kennedy <adamk@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2002-2022 by Per Einar Ellefsen <pereinar@cpan.org>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
