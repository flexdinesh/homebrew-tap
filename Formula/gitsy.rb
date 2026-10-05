class Gitsy < Formula
  desc "Scan directories for Git repositories and show a compact status table"
  homepage "https://github.com/flexdinesh/gitsy"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.7/gitsy_0.1.7_darwin_amd64.tar.gz"
      sha256 "ad7b395faf668f4757cafd29a1dbdec1a0da225d78b103c0d570f93153990cc0"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.7/gitsy_0.1.7_darwin_arm64.tar.gz"
      sha256 "0cb10f72254c0e0517e3ea7d4dfa42366f4463666281fe9c1fdd1b5577c5ce72"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.7/gitsy_0.1.7_linux_amd64.tar.gz"
      sha256 "dba4ff65449f4fb4dd3ff1cdbd91c056bddb69a71a3cdaefdc4ea4e7785c4b81"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.7/gitsy_0.1.7_linux_arm64.tar.gz"
      sha256 "70382d4e50145e193b80834b6888192c56f1360a48e7ab9d2388f1505f4e5b02"
    end
  end

  def install
    bin.install "gitsy"
  end

  test do
    assert_match "gitsy #{version}", shell_output("#{bin}/gitsy --version")
  end
end
