class Portforward < Formula
  desc "Manage local SSH port forwards"
  homepage "https://github.com/flexdinesh/portforward"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/portforward/releases/download/v0.1.3/portforward_0.1.3_darwin_amd64.tar.gz"
      sha256 "2b390c56cdb919d5cfa20b9fa8eae2044180546aa87298728950a4ac50862565"
    end

    on_arm do
      url "https://github.com/flexdinesh/portforward/releases/download/v0.1.3/portforward_0.1.3_darwin_arm64.tar.gz"
      sha256 "c8d2ee45727d45a0b0eed18fcc5d49cb4671033c51a9dd0deac43053b69203ab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/portforward/releases/download/v0.1.3/portforward_0.1.3_linux_amd64.tar.gz"
      sha256 "93fa8b3b973ddc9bdf23921aca22e7deb2a0e2bd79fa4ed7eec5cd9fa1891b80"
    end

    on_arm do
      url "https://github.com/flexdinesh/portforward/releases/download/v0.1.3/portforward_0.1.3_linux_arm64.tar.gz"
      sha256 "272bb39a3e3ef8ecd7aeefd410fe4128b9f55069d598dfce6566b20e17df9fe1"
    end
  end

  def install
    bin.install "portforward"
  end

  test do
    assert_match "portforward #{version}", shell_output("#{bin}/portforward --version")
  end
end
