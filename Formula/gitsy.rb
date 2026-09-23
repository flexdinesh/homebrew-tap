class Gitsy < Formula
  desc "Scan directories for Git repositories and show a compact status table"
  homepage "https://github.com/flexdinesh/gitsy"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.5/gitsy_0.1.5_darwin_amd64.tar.gz"
      sha256 "ac2c094221813521447c11345df560ef37fd7c275a876a15c4ed0cdeeb24a623"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.5/gitsy_0.1.5_darwin_arm64.tar.gz"
      sha256 "8ea944828bf6ba1000b096296796020af0126c1c0a26423bce2a1f1a9c34125b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.5/gitsy_0.1.5_linux_amd64.tar.gz"
      sha256 "927fbd5144cf3f419a213a0909237bdb81f99f5262aea94c853cc2eebe3d4e42"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.5/gitsy_0.1.5_linux_arm64.tar.gz"
      sha256 "aace97d45cf8df024b9cadab1777270d73bac7687f9320a53c8d865af009b14a"
    end
  end

  def install
    bin.install "gitsy"
  end

  test do
    assert_match "gitsy #{version}", shell_output("#{bin}/gitsy --version")
  end
end
