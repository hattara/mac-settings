#!/usr/bin/env perl
use strict;
use warnings;
use DateTime;
use Data::Dumper;

my $type = shift;
warn $type;

unless($type){
    die "no selected type";
}

if ($type eq 'to') {
    my ($y,$m,$d,$h,$i,$s) = @ARGV;
    my $dt = DateTime->new(
        time_zone => 'Asia/Tokyo',
        year => $y,
        month => $m,
        day => $d,
        hour => $h,
        minute => $i,
        second => $s,
    );

    warn sprintf('input / %s-%s-%s %s:%s:%s', $y, $m, $d, $h, $i, $s);
    warn sprintf('convert / %s %s', $dt->ymd, $dt->hms);
    warn "---------------";
    warn sprintf('epoch / %s', $dt->epoch);
} else {
    my $epoch = shift;
    my $dt = DateTime->from_epoch(epoch => $epoch)->set_time_zone('Asia/Tokyo');
    warn sprintf('input / %s', $epoch);
    warn "---------------";
    warn sprintf('convert / %s %s', $dt->ymd, $dt->hms);
}




