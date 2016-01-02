use strict;
use warnings;
use utf8;
use Acme::Shukugawa::Atom;
use Plack::Request;
use Plack::Response;
use JSON;

my $serializer = JSON->new->utf8(1);

sub json_res {
    my $data = shift;
    my $json = $serializer->encode($data);
    my $res = Plack::Response->new(200);
    $res->content_type('application/json; charset=utf-8');
    $res->body($json);
    $res->finalize;
}

use Data::Dumper;
sub {
    my $env = shift;
    my $req = Plack::Request->new($env);

    if ($req->path ne '/') {
        return Plack::Response->new(404)->finalize;
    }

    my $text = $req->param('text');
warn Dumper($text);
    my $atomized_text = Acme::Shukugawa::Atom->translate($text);
    json_res(+{ text => $atomized_text });   
};
