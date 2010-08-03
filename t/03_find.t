use Test::More tests => 36;

use Net::IP::AddrRanges;

{
    my $range = Net::IP::AddrRanges->new(
        '10.10.10.10-10.10.10.20',
        '10.10.11.0/24',
    );

    ok(! $range->find('10.10.10.9'));
    ok(  $range->find('10.10.10.10'));
    ok(  $range->find('10.10.10.11'));
    ok(  $range->find('10.10.10.19'));
    ok(  $range->find('10.10.10.20'));
    ok(! $range->find('10.10.10.21'));

    ok(! $range->find('10.10.10.255'));
    ok(  $range->find('10.10.11.0'));
    ok(  $range->find('10.10.11.1'));
    ok(  $range->find('10.10.11.254'));
    ok(  $range->find('10.10.11.255'));
    ok(! $range->find('10.10.12.0'));
}

{
    my $range = Net::IP::AddrRanges->new(
        '10.10.10.10-10.10.10.20',
        '10.10.11.10-10.10.11.20',
        '10.10.12.10-10.10.12.20',
        '10.10.13.10-10.10.13.20',
        '10.10.14.10-10.10.14.20',
        '10.10.15.10-10.10.15.20',
        '10.10.16.10-10.10.16.20',
        '10.10.17.10-10.10.17.20',
        '10.10.18.10-10.10.18.20',
        '10.10.19.10-10.10.19.20',
        '10.10.20.10-10.10.20.20',
        '10.10.21.10-10.10.21.20',
        '10.10.22.10-10.10.22.20',
        '10.10.23.10-10.10.23.20',
        '10.10.24.10-10.10.24.20',
        '10.10.25.10-10.10.25.20',
        '10.10.26.10-10.10.26.20',
        '10.10.27.10-10.10.27.20',
        '10.10.28.10-10.10.28.20',
        '10.10.29.10-10.10.29.20',
        '10.10.30.10-10.10.30.20',
        '10.10.32.10-10.10.32.20',
        '10.10.31.10-10.10.31.20',
        '10.10.33.10-10.10.33.20',
        '10.10.34.10-10.10.34.20',
        '10.10.35.10-10.10.35.20',
    );

    ok(! $range->find('10.10.10.9'));
    ok(  $range->find('10.10.10.10'));
    ok(  $range->find('10.10.10.11'));
    ok(  $range->find('10.10.10.19'));
    ok(  $range->find('10.10.10.20'));
    ok(! $range->find('10.10.10.21'));
    ok(! $range->find('10.10.22.9'));
    ok(  $range->find('10.10.22.10'));
    ok(  $range->find('10.10.22.11'));
    ok(  $range->find('10.10.22.19'));
    ok(  $range->find('10.10.22.20'));
    ok(! $range->find('10.10.22.21'));
    ok(! $range->find('10.10.23.9'));
    ok(  $range->find('10.10.23.10'));
    ok(  $range->find('10.10.23.11'));
    ok(  $range->find('10.10.23.19'));
    ok(  $range->find('10.10.23.20'));
    ok(! $range->find('10.10.23.21'));
    ok(! $range->find('10.10.35.9'));
    ok(  $range->find('10.10.35.10'));
    ok(  $range->find('10.10.35.11'));
    ok(  $range->find('10.10.35.19'));
    ok(  $range->find('10.10.35.20'));
    ok(! $range->find('10.10.35.21'));
}

