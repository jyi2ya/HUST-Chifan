#!/usr/bin/env perl
use v5.20;
use utf8;
use warnings;
use feature 'signatures';
use open qw(:std :utf8);
use DateTime;
use Encode;

use Data::Dumper;

if (defined $ARGV[0] and $ARGV[0] eq '-h') {
    print <<"EOF";
使用说明：

  $0                           -- 查询当前还有哪些食堂能吃饭
  $0 还有什么吃的              -- 查询当前还有哪些食堂能吃饭
  $0 <REGEX>                   -- 查询名字匹配 <REGEX> 的食堂什么时候开饭
  $0 什么时候开饭 <REGEX>      -- 查询名字匹配 <REGEX> 的食堂什么时候开饭
  $0 -h                        -- 打印帮助手册

数据来自华中大微校园
EOF
    exit;
}

my @data;

while (<DATA>) {
    my ($name, @opening) = split /\s+/;
    @opening = map {
        [
            map {
                my ($h, $m) = split /:/;
                $h * 60 + $m;
            } split /—+/
        ]
    } @opening;
    push @data, [ $name, \@opening ];
}

open STDOUT, "|column -t";

my ($sec, $min, $hour, @dontcare) = localtime(time);

@ARGV = map { Encode::decode_utf8($_) } @ARGV;

if (!defined $ARGV[0] or $ARGV[0] eq "还有什么吃的") {
    my $stamp = $hour * 60 + $min;
    my @available;
    for my $entry (@data) {
        for my $opening (@{$entry->[1]}) {
            if ($opening->[0] <= $stamp && $stamp <= $opening->[1]) {
                push @available, [ $entry->[0], $opening, $opening->[1] - $stamp ];
                last;
            }
        }
    }
    @available = sort { $a->[2] <=> $b->[2] } @available;

    if (int @available) {
        for (@available) {
            my ($res_h, $res_m) = (int($_->[2] / 60), $_->[2] % 60);
            if ($res_h) {
                say "$_->[0] 还可以吃${res_h}小时${res_m}分钟";
            } else {
                say "$_->[0] 还可以吃${res_m}分钟";
            }
        }
    } else {
        say "坏了，今天没有吃的了";
    }
} else {
    my $stamp = $hour * 60 + $min;

    shift @ARGV if $ARGV[0] eq "什么时候开饭";
    my $pattern = $ARGV[0] // "";

    for my $entry (@data) {
        next unless $entry->[0] =~ /$pattern/;

        my ($start_time, $end_time) = undef;
        for my $opening (@{$entry->[1]}) {
            if ($opening->[0] <= $stamp && $stamp <= $opening->[1]) {
                ($start_time, $end_time) = @$opening;
            } elsif ($opening->[0] > $stamp) {
                $start_time //= $opening->[0];
                $start_time = $opening->[0] if $start_time > $opening->[0];
            }
        }

        if (!defined $start_time) {
            say "$entry->[0] 今天已经没有饭了";
        } elsif ($start_time < $stamp) {
            my $res = $end_time - $stamp;
            my ($res_h, $res_m) = (int($res / 60), $res % 60);
            if ($res_h) {
                say "$entry->[0] 已开饭 还可以吃${res_h}小时${res_m}分钟";
            } else {
                say "$entry->[0] 已开饭 还可以吃${res_m}分钟";
            }
        } else {
            my $res = $start_time - $stamp;
            my ($res_h, $res_m) = (int($res / 60), $res % 60);
            if ($res_h) {
                say "$entry->[0] 还有${res_h}小时${res_m}分钟开饭";
            } else {
                say "$entry->[0] 还有${res_m}分钟开饭";
            }
        }
    }
}

__DATA__
东教工	06:30——09:00	10:50——13:00	16:30——19:30
学一食堂	06:50——08:30	11:00——12:40	16:50——20:00
学二食堂	10:50——12:30	16:50——18:30
韵苑食堂一楼	06:50——13:30	16:00——22:30
韵苑食堂二楼	06:30——09:00	10:30——13:00	16:30——19:00
东园食堂一楼	10:40——14:00	16:40——20:30
东园食堂二楼	06:50——08:30	11:00——12:40	17:00——18:40
东园食堂三楼	11:00——12:40	17:00——18:40
东篱餐厅	10:00——21:30
清真餐厅	10:00——14:00 16:30——21:00
东一食堂一楼	06:50——09:30	10:50——13:00	16:50——19:00
东一食堂二楼	10:50——13:00	16:50——19:00
紫荆园	11:00——14:30	17:00——22:00
东三清真食堂	06:50——09:30 10:50——13:00 17:00——19:10
集锦园	06:30——10:00	11:00——13:00	16:50——19:00
喻园	07:00——13:00	16:30——20:30
集贤楼一楼	06:30——08:30	11:00——12:40	17:00——18:40
集贤楼二楼	11:00——14:00	17:00——21:00
百惠园食堂	06:50——08:45	10:50——12:50	17:00——18:40
枫林湾	09:00——14:30	17:00——19:00
百品屋小吃城	09:30——21:30
西华园	09:00——23:00
西一一楼	06:50——09:30	10:50——13:00	16:50——19:00
西一二楼	11:00——12:40	16:30——18:30
西一清真	06:50——08:30	11:00——12:40	17:00——18:40
氧气层	10:00——21:00
百景园一楼	06:50——08:30	11:00——13:00	17:00——18:40
百景园二楼	11:00——13:00	17:00——18:40
百景园三楼雅厅	11:00——20:00
