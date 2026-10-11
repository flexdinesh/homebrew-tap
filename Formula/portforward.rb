class Portforward < Formula
  desc "Manage local SSH port forwards"
  homepage "https://github.com/flexdinesh/portforward"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/portforward/releases/download/v0.1.1/portforward_0.1.1_darwin_amd64.tar.gz"
      sha256 "c5f506b9ab4cf23146c4c5d5ed9dbca3e96947092cc901c442f98150d6fc699c"
    end

    on_arm do
      url "https://github.com/flexdinesh/portforward/releases/download/v0.1.1/portforward_0.1.1_darwin_arm64.tar.gz"
      sha256 "9ebcdf9fb07db3531772fff63567c320ab660b0918fb05157566087a7028bf98"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/portforward/releases/download/v0.1.1/portforward_0.1.1_linux_amd64.tar.gz"
      sha256 "1b98cb2913e8ca8247d36227edf3e84f8a1a286b8301a7d04f6be9910e42e190"
    end

    on_arm do
      url "https://github.com/flexdinesh/portforward/releases/download/v0.1.1/portforward_0.1.1_linux_arm64.tar.gz"
      sha256 "fcabf7986ecd3a872732a968ece2c7b5c4691b8ad765aa874ffa27bcd792283c"
    end
  end

  def install
    bin.install "portforward"
  end

  test do
    assert_match "portforward #{version}", shell_output("#{bin}/portforward --version")
  end
end
