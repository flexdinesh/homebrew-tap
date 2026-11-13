class Portforward < Formula
  desc "Manage local SSH port forwards"
  homepage "https://github.com/flexdinesh/portforward"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/portforward/releases/download/v0.1.2/portforward_0.1.2_darwin_amd64.tar.gz"
      sha256 "e305b35f65d6e67022ef7230210297868abf1b36dcc40fa2673dda18ed492a31"
    end

    on_arm do
      url "https://github.com/flexdinesh/portforward/releases/download/v0.1.2/portforward_0.1.2_darwin_arm64.tar.gz"
      sha256 "60a94a6d3c4113b08d9762a0f000cf044277384904d6ecd4a6a36a164b0ed73c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/portforward/releases/download/v0.1.2/portforward_0.1.2_linux_amd64.tar.gz"
      sha256 "42e85a6ddb75835c5c2c08931cbec708023453c3e5422ea3e9544523b633d837"
    end

    on_arm do
      url "https://github.com/flexdinesh/portforward/releases/download/v0.1.2/portforward_0.1.2_linux_arm64.tar.gz"
      sha256 "ee3e188424eec90ad27dcccc1483aadb4d6c17ab749e1853411ecad257784154"
    end
  end

  def install
    bin.install "portforward"
  end

  test do
    assert_match "portforward #{version}", shell_output("#{bin}/portforward --version")
  end
end
