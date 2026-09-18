class Gitsy < Formula
  desc "Scan directories for Git repositories and show a compact status table"
  homepage "https://github.com/flexdinesh/gitsy"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.3/gitsy_0.1.3_darwin_amd64.tar.gz"
      sha256 "2ef6699b98dfa45ac5bd53e495084ad3d06f7b603d8a229fba49887182e79e41"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.3/gitsy_0.1.3_darwin_arm64.tar.gz"
      sha256 "0a85e22dae4d5ff934ded124e26bf6a9424c6b3281824e1fc104b05a00162f39"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.3/gitsy_0.1.3_linux_amd64.tar.gz"
      sha256 "8d2a5449428bb969187ad804edb4a9865432216916b2423375312698637335a7"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.3/gitsy_0.1.3_linux_arm64.tar.gz"
      sha256 "86be35a4f728b90cc9096293514e0904f29cbbd89c8157634d214927310b2a1e"
    end
  end

  def install
    bin.install "gitsy"
  end

  test do
    assert_match "gitsy #{version}", shell_output("#{bin}/gitsy --version")
  end
end
