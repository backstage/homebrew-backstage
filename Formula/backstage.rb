require 'formula'

class Backstage < Formula
  homepage 'https://github.com/backstage'
  url 'https://github.com/backstage/backstage-client/releases/download/0.0.1/backstage-client-0.0.1.tar.gz'
  sha256 'd032044d477352b0a0330b1218c4147e967ebf1848d142f3dc6b2deeecf45910'

  depends_on 'go'

  def install
    mkdir_p "src/github.com/backstage/backstage-client"
    system "bash", "-c", "GOPATH=\"$PWD\" go build -o backstage github.com/backstage/backstage-client/backstage"
    bin.install "backstage"
  end
end
