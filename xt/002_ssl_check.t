use strict;
use warnings;
use Test::More tests => 2;
use Net::OpenID::Consumer::Lite;

eval {
    Net::OpenID::Consumer::Lite::_get('https://www.hokkoku.cns-jp.com/');
};
my $e = $@;
ok $e;
like $e, qr{^\Qinvalid ssl? https://www.hokkoku.cns-jp.com/};
