use strict;
use warnings;

use Module::Build;

my $builder = Module::Build->new(
    module_name          => 'App::Git::CheckMergeConflicts',
    license              => 'perl',
    dist_author          => 'Travis Holton <heytrav@cpan.org>',
    dist_version_from    => 'lib/App/Git/CheckMergeConflicts.pm',
    recursive_test_files => 1,
    configure_requires   => {
        'Module::Build' => 0.4,
    },
    requires => {
        'App::gh::Git'    => 0,
        'Getopt::Long'    => 0,
        'List::MoreUtils' => 0,
        'Pod::Usage'      => 0,
        'YAML'            => 0
    },
    add_to_cleanup => ['App-Git-CheckMergeConflicts-*'],
);

$builder->create_build_script();
