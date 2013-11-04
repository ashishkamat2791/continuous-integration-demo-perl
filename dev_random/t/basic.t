use Mojo::Base -strict;

use Test::More;
use Test::Mojo;

my $t = Test::Mojo->new('DevRandom');
$t->get_ok('/')->status_is(200)->content_like(qr/RaaS/i);

done_testing();
