#!/usr/bin/env perl

use strict;
use warnings;

use Test::More tests => 1;

ok(`which git`, 'Check if git is installed');
