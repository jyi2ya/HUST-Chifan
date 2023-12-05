#!/usr/bin/env perl
use 5.020;
use utf8;
use warnings;
use autodie;
use feature qw/signatures postderef/;
no warnings qw/experimental::postderef/;
use open qw(:std :utf8);

use Mojo::UserAgent;
use Data::Dumper;
use DDP;

my $ua = Mojo::UserAgent->new;

my $dom = $ua->get('http://hq.hust.edu.cn/ysfw/stfw.htm')->result->dom;
my @result = $dom
    ->at('.wznr')
    ->find('tr')
    ->map(sub ($dom) {
            $dom->find('td')->[1]
        }
    )
    ->each(sub {
            for my $dom ($_->find('span')->each) {
                $dom->replace($dom->all_text);
            }
            for my $dom ($_->find('strong')->each) {
                $dom->replace($dom->all_text);
            }
        }
    )
    ->map(sub ($dom) {
            [ $dom->find('p')->map('text')->each ]
        }
    )
    ->map(sub ($fragments) {
            my $info = {
                name => undef,
                position => undef,
                breakfast => undef,
                lunch => undef,
                dinner => undef,
                contact => undef,
            };
            for (@$fragments) {
                s/^\s+|\s+$//;
                if (/^食堂地址[[:punct:]]?(.*)/) {
                    $info->{position} = $1;
                    next;
                }
                if (/(\d+[:：]\d+)-+(\d+[:：]\d+)/) {
                    my $times = { begin => $1, end => $2 };
                    $info->{breakfast} = $times if /早/;
                    $info->{lunch} = $times if /[中午]/;
                    $info->{dinner} = $times if /晚/;
                    next;
                }
                if (/(\d{3}-?\d{8})/) {
                    $info->{contact} = $1;
                    next;
                }
                s/^\d+、?//;
                $info->{name} = $_;
            }
            $info
        }
    )
    ->each;

my $head = sprintf "#!/usr/bin/env perl\nmy \$data = eval(<<'EOF');\n%s\nEOF", Dumper \@result;
say $head;
