class Gitsy < Formula
  desc "Scan directories for Git repositories and show a compact status table"
  homepage "https://github.com/flexdinesh/gitsy"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.10/gitsy_0.1.10_darwin_amd64.tar.gz"
      sha256 "ee94e1d9b99134332ffdc3978ed186a2a5aea804f6b6c9aa20f38de8ad96136c"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.10/gitsy_0.1.10_darwin_arm64.tar.gz"
      sha256 "cacd42ec5d1190ae1356d3d603ce8f6637aa67fb12b4dad2eb659134b48f7f4e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.10/gitsy_0.1.10_linux_amd64.tar.gz"
      sha256 "c431d02384018bd9578f3153cf2d45eb093836070cc8842f2402c60cefb61164"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.10/gitsy_0.1.10_linux_arm64.tar.gz"
      sha256 "bb7fcfb9d6874c191252c486e4cbd616b60154a3cb5b2bc6a6acf48ff8f6204f"
    end
  end

  def install
    bin.install "gitsy"
  end

  test do
    assert_match "gitsy #{version}", shell_output("#{bin}/gitsy --version")
  end
end
