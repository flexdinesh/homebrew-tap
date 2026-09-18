class Servediff < Formula
  desc "Review local Git changes in your browser"
  homepage "https://github.com/flexdinesh/servediff"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/servediff/releases/download/v0.1.0/servediff_0.1.0_darwin_amd64.tar.gz"
      sha256 "7d00b3adc8568657ed48c34c7df6f01979c74514d3a810844350152422ef29f3"
    end

    on_arm do
      url "https://github.com/flexdinesh/servediff/releases/download/v0.1.0/servediff_0.1.0_darwin_arm64.tar.gz"
      sha256 "403420fca3bcb2d704ea5699ff2e099a23821ece535cc3ba86e50bf46b5405e2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/servediff/releases/download/v0.1.0/servediff_0.1.0_linux_amd64.tar.gz"
      sha256 "9768bd9d7870ac8eb4f3657da6f2fab3726fa118f47618872bd6683b6dafa1b8"
    end

    on_arm do
      url "https://github.com/flexdinesh/servediff/releases/download/v0.1.0/servediff_0.1.0_linux_arm64.tar.gz"
      sha256 "8c171ac81291328545c1e094d2a5d86c3304eba3c382e10bd9713f96be40f595"
    end
  end

  def install
    bin.install "servediff"
  end

  test do
    assert_match "servediff #{version}", shell_output("#{bin}/servediff --version")
  end
end
