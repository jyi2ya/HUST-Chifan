#!/usr/bin/env perl
my $data = eval(<<'EOF');
$VAR1 = [
          {
            'breakfast' => {
                             'begin' => '6:50',
                             'end' => '9:00'
                           },
            'contact' => '027-87792011',
            'dinner' => {
                          'begin' => '17:00',
                          'end' => '20:00'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '14:00'
                       },
            'name' => "\x{4e1c}\x{56ed}\x{98df}\x{5802}\x{4e00}\x{697c}",
            'position' => "\x{7231}\x{56e0}\x{65af}\x{5766}\x{5e7f}\x{573a}\x{4e1c}\x{5357}\x{4fa7}"
          },
          {
            'breakfast' => {
                             'begin' => '6:50',
                             'end' => '9:00'
                           },
            'contact' => '027-87792013',
            'dinner' => {
                          'begin' => '17:00',
                          'end' => '19:00'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '13:00'
                       },
            'name' => "\x{4e1c}\x{56ed}\x{98df}\x{5802}\x{4e8c}\x{697c}",
            'position' => "\x{7231}\x{56e0}\x{65af}\x{5766}\x{5e7f}\x{573a}\x{4e1c}\x{5357}\x{4fa7}"
          },
          {
            'breakfast' => undef,
            'contact' => '027-87792012',
            'dinner' => {
                          'begin' => '17:00',
                          'end' => '19:00'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '13:00'
                       },
            'name' => "\x{4e1c}\x{56ed}\x{98df}\x{5802}\x{4e09}\x{697c}",
            'position' => "\x{7231}\x{56e0}\x{65af}\x{5766}\x{5e7f}\x{573a}\x{4e1c}\x{5357}\x{4fa7}"
          },
          {
            'breakfast' => {
                             'begin' => '6:50',
                             'end' => "14\x{ff1a}00"
                           },
            'contact' => '027-87793439',
            'dinner' => {
                          'begin' => '16:30',
                          'end' => '22:00'
                        },
            'lunch' => $VAR1->[3]{'breakfast'},
            'name' => "\x{97f5}\x{82d1}\x{98df}\x{5802}\x{4e00}\x{697c}",
            'position' => "\x{4e1c}\x{64cd}\x{573a}\x{5317}\x{4fa7}"
          },
          {
            'breakfast' => {
                             'begin' => '6:50',
                             'end' => '9:00'
                           },
            'contact' => '027-87792010',
            'dinner' => {
                          'begin' => '17:00',
                          'end' => '19:00'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '13:00'
                       },
            'name' => "\x{97f5}\x{82d1}\x{98df}\x{5802}\x{4e8c}\x{697c}",
            'position' => "\x{4e1c}\x{64cd}\x{573a}\x{5317}\x{4fa7}"
          },
          {
            'breakfast' => undef,
            'contact' => '027-87792006',
            'dinner' => {
                          'begin' => '17:00',
                          'end' => '19:00'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '13:00'
                       },
            'name' => "\x{5b66}\x{4e00}\x{98df}\x{5802}\x{4e00}\x{697c}",
            'position' => "\x{4e1c}\x{64cd}\x{573a}\x{5357}\x{4fa7}"
          },
          {
            'breakfast' => {
                             'begin' => '6:50',
                             'end' => '9:00'
                           },
            'contact' => '027-87792006',
            'dinner' => {
                          'begin' => '17:00',
                          'end' => '20:00'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '13:00'
                       },
            'name' => "\x{5b66}\x{4e00}\x{98df}\x{5802}\x{4e8c}\x{697c}",
            'position' => "\x{4e1c}\x{64cd}\x{573a}\x{5357}\x{4fa7}"
          },
          {
            'breakfast' => undef,
            'contact' => '027-87792007',
            'dinner' => {
                          'begin' => '17:00',
                          'end' => '19:00'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '13:00'
                       },
            'name' => "\x{5b66}\x{4e8c}\x{98df}\x{5802}",
            'position' => "\x{4e1c}\x{64cd}\x{573a}\x{5357}\x{4fa7}"
          },
          {
            'breakfast' => {
                             'begin' => '6:50',
                             'end' => '9:30'
                           },
            'contact' => '027-87793171',
            'dinner' => {
                          'begin' => '16:30',
                          'end' => '19:30'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '13:00'
                       },
            'name' => "\x{4e1c}\x{6559}\x{5de5}\x{98df}\x{5802}",
            'position' => "\x{4e1c}\x{533a}\x{6821}\x{533b}\x{9662}\x{5357}\x{4fa7}50\x{7c73}"
          },
          {
            'breakfast' => {
                             'begin' => '6:50',
                             'end' => '9:00'
                           },
            'contact' => '027-87542732',
            'dinner' => {
                          'begin' => '17:00',
                          'end' => '19:00'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '13:00'
                       },
            'name' => "\x{4e1c}\x{4e09}\x{98df}\x{5802}",
            'position' => "\x{4e2d}\x{5fc3}\x{64cd}\x{573a}\x{4e1c}\x{5317}\x{4fa7}"
          },
          {
            'breakfast' => {
                             'begin' => '6:50',
                             'end' => "14\x{ff1a}00"
                           },
            'contact' => '027-87544094',
            'dinner' => {
                          'begin' => '16:30',
                          'end' => '22:00'
                        },
            'lunch' => $VAR1->[10]{'breakfast'},
            'name' => "\x{4e1c}\x{4e00}\x{98df}\x{5802}\x{4e00}\x{697c}",
            'position' => "\x{4e2d}\x{5fc3}\x{64cd}\x{573a}\x{5317}\x{4fa7}"
          },
          {
            'breakfast' => undef,
            'contact' => '027-87542832',
            'dinner' => {
                          'begin' => '17:00',
                          'end' => '19:00'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '13:00'
                       },
            'name' => "\x{4e1c}\x{4e00}\x{98df}\x{5802}\x{4e8c}\x{697c}",
            'position' => "\x{4e2d}\x{5fc3}\x{64cd}\x{573a}\x{5317}\x{4fa7}"
          },
          {
            'breakfast' => undef,
            'contact' => '027-87540309',
            'dinner' => {
                          'begin' => '16:30',
                          'end' => '20:00'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '14:00'
                       },
            'name' => "\x{7d2b}\x{8346}\x{56ed}\x{98ce}\x{5473}\x{98df}\x{5802}",
            'position' => "\x{4e2d}\x{5fc3}\x{64cd}\x{573a}\x{4e1c}\x{5317}\x{4fa7}"
          },
          {
            'breakfast' => {
                             'begin' => '6:30',
                             'end' => '9:00'
                           },
            'contact' => '027-87542633',
            'dinner' => {
                          'begin' => '17:00',
                          'end' => '19:00'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '13:00'
                       },
            'name' => "\x{96c6}\x{8d24}\x{697c}\x{98df}\x{5802}",
            'position' => "\x{7ba1}\x{7406}\x{5b66}\x{9662}\x{4e1c}\x{5357}\x{4fa7}"
          },
          {
            'breakfast' => {
                             'begin' => '6:30',
                             'end' => '10:00'
                           },
            'contact' => '027-87542334',
            'dinner' => {
                          'begin' => '16:30',
                          'end' => '19:00'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '13:00'
                       },
            'name' => "\x{96c6}\x{9526}\x{56ed}\x{98df}\x{5802}",
            'position' => "\x{6821}\x{533b}\x{9662}\x{5357}\x{4fa7}"
          },
          {
            'breakfast' => {
                             'begin' => '6:50',
                             'end' => "13\x{ff1a}30"
                           },
            'contact' => '027-87544768',
            'dinner' => {
                          'begin' => '16:30',
                          'end' => '19:00'
                        },
            'lunch' => $VAR1->[15]{'breakfast'},
            'name' => "\x{55bb}\x{56ed}\x{98ce}\x{5473}\x{98df}\x{5802}",
            'position' => "\x{96c6}\x{8d38}\x{5e02}\x{573a}\x{5357}\x{4fa7}"
          },
          {
            'breakfast' => {
                             'begin' => '6:50',
                             'end' => "9\x{ff1a}00"
                           },
            'contact' => '027-87556921',
            'dinner' => {
                          'begin' => '17:00',
                          'end' => '20:00'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '14:00'
                       },
            'name' => "\x{767e}\x{666f}\x{56ed}\x{98df}\x{5802}\x{4e00}\x{697c}",
            'position' => "\x{897f}\x{8fb9}\x{9ad8}\x{5c42}\x{5c0f}\x{533a}\x{897f}\x{5357}\x{4fa7}"
          },
          {
            'breakfast' => undef,
            'contact' => '027-87556922',
            'dinner' => {
                          'begin' => '17:00',
                          'end' => '19:00'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '13:00'
                       },
            'name' => "\x{767e}\x{666f}\x{56ed}\x{98df}\x{5802}\x{4e8c}\x{697c}",
            'position' => "\x{897f}\x{8fb9}\x{9ad8}\x{5c42}\x{5c0f}\x{533a}\x{897f}\x{5357}\x{4fa7}"
          },
          {
            'breakfast' => {
                             'begin' => '6:50',
                             'end' => "14\x{ff1a}00"
                           },
            'contact' => '027-87558601',
            'dinner' => {
                          'begin' => '16:30',
                          'end' => '22:00'
                        },
            'lunch' => $VAR1->[18]{'breakfast'},
            'name' => "\x{897f}\x{4e00}\x{98df}\x{5802}\x{4e00}\x{697c}",
            'position' => "\x{897f}\x{64cd}\x{573a}\x{5317}\x{4fa7}20\x{7c73}"
          },
          {
            'breakfast' => undef,
            'contact' => '027-87541802',
            'dinner' => {
                          'begin' => '17:00',
                          'end' => '19:00'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '13:00'
                       },
            'name' => "\x{897f}\x{4e00}\x{98df}\x{5802}\x{4e8c}\x{697c}",
            'position' => "\x{897f}\x{64cd}\x{573a}\x{5317}\x{4fa7}20\x{7c73}"
          },
          {
            'breakfast' => {
                             'begin' => '6:50',
                             'end' => '9:00'
                           },
            'contact' => '027-87544440',
            'dinner' => {
                          'begin' => '17:00',
                          'end' => '19:00'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '13:00'
                       },
            'name' => "\x{897f}\x{4e00}\x{98df}\x{5802}\x{ff08}\x{6c11}\x{65cf}\x{ff09}",
            'position' => "\x{897f}\x{64cd}\x{573a}\x{5317}\x{4fa7}20\x{7c73}"
          },
          {
            'breakfast' => {
                             'begin' => '6:50',
                             'end' => '9:30'
                           },
            'contact' => '027-87540700',
            'dinner' => {
                          'begin' => '17:00',
                          'end' => '19:00'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '13:00'
                       },
            'name' => "\x{897f}\x{4e8c}\x{98df}\x{5802}\x{4e00}\x{697c}",
            'position' => "\x{897f}\x{64cd}\x{573a}\x{897f}\x{5317}\x{4fa7}20\x{7c73}"
          },
          {
            'breakfast' => undef,
            'contact' => '027-87540500',
            'dinner' => {
                          'begin' => '17:00',
                          'end' => '19:00'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '13:00'
                       },
            'name' => "\x{897f}\x{4e8c}\x{98df}\x{5802}\x{4e8c}\x{697c}",
            'position' => "\x{897f}\x{64cd}\x{573a}\x{897f}\x{5317}\x{4fa7}20\x{7c73}"
          },
          {
            'breakfast' => undef,
            'contact' => '027-87556355',
            'dinner' => {
                          'begin' => '17:00',
                          'end' => '19:00'
                        },
            'lunch' => {
                         'begin' => '11:00',
                         'end' => '13:00'
                       },
            'name' => "\x{767e}\x{60e0}\x{56ed}\x{98df}\x{5802}",
            'position' => "\x{7d2b}\x{83d8}\x{5b66}\x{751f}\x{516c}\x{5bd3}\x{5165}\x{53e3}\x{5904}"
          }
        ];

EOF
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

my @data = map {
    [
        $_->{name},
        [
            map {
                [
                    map {
                        my ($h, $m) = split /[:：]/;
                        $h * 60 + $m
                    } $_->{begin}, $_->{end}
                ]
            }
            grep { defined $_ }
            $_->{breakfast}, $_->{lunch}, $_->{dinner}
        ]
    ]
} @$data;

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

