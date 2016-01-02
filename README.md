# docker-shukugawa-atom
業界人風のテキスト変換を行うAPIコンテナ

## SYNOPSIS

起動方法

    $ sudo docker run -p 7654:7654 --rm -it ytnobody/shukugawa-atom

アクセス例

    curl http://127.0.0.1:7654/?text=六本木で寿司

レスポンス例

    {"text":"ギロッポンでシースー"}

## SEE ALSO

[http://search.cpan.org/~dmaki/Acme-Shukugawa-Atom-0.00004/lib/Acme/Shukugawa/Atom.pm](http://search.cpan.org/~dmaki/Acme-Shukugawa-Atom-0.00004/lib/Acme/Shukugawa/Atom.pm)
