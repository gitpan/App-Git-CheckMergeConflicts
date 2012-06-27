package App::Git::CheckMergeConflicts;

use strict;
use warnings;

## no critic
our $VERSION = '0.03';
eval $VERSION;
## use critic



1;

=head1 NAME

App::Git::CheckMergeConflicts - Display possible merge conflicts between
branches in a git repository


=head1 DESCRIPTION

The executable script in this package performs a C<git-merge --no-commit>
and collects the error output caused by merge conflicts. If an error does occur,
it checks to see which files failed to merge and stores the diff output for
display.  After each merge attempt it executes C<git-merge --abort> to clean
up the working directory.






