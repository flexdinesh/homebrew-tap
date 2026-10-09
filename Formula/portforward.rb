class Portforward < Formula
  desc "Manage local SSH port forwards"
  homepage "https://github.com/flexdinesh/portforward"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/portforward/releases/download/v0.1.0/portforward_0.1.0_darwin_amd64.tar.gz"
      sha256 "b903b5271fdc223ddd2f2ddaeccc287a625fc884aae46d894534ba8b3d031249"
    end

    on_arm do
      url "https://github.com/flexdinesh/portforward/releases/download/v0.1.0/portforward_0.1.0_darwin_arm64.tar.gz"
      sha256 "c4dd9eee54a05165e5bb245ed434df69451270781ec8ea279c66c8797c6f0278"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/portforward/releases/download/v0.1.0/portforward_0.1.0_linux_amd64.tar.gz"
      sha256 "65333df4f49fed51b921c781b6c4671652142f338eb7fd925f610bbd3e108559"
    end

    on_arm do
      url "https://github.com/flexdinesh/portforward/releases/download/v0.1.0/portforward_0.1.0_linux_arm64.tar.gz"
      sha256 "db1da37c0a3fb548c02080f55e0215c76792b46aa36353b8de39ff71e5cdf6aa"
    end
  end

  def install
    bin.install "portforward"
  end

  test do
    assert_match "portforward #{version}", shell_output("#{bin}/portforward --version")
  end
end
