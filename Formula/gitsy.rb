class Gitsy < Formula
  desc "Scan directories for Git repositories and show a compact status table"
  homepage "https://github.com/flexdinesh/gitsy"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.4/gitsy_0.1.4_darwin_amd64.tar.gz"
      sha256 "6ce1bb595c830b18bb025d23cd91d1cfa772eb67d066dfa3903fc2febd7930f6"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.4/gitsy_0.1.4_darwin_arm64.tar.gz"
      sha256 "7cf3c4bb2a0e44f53faa905f3eb5f459061217fc7fbb4442e6f8fafc8e3fba9d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.4/gitsy_0.1.4_linux_amd64.tar.gz"
      sha256 "6ba8e95b9b2cc9369990b1d3ebe11a5f45e59563f10c211f925b9d5c3fcc9ec8"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.4/gitsy_0.1.4_linux_arm64.tar.gz"
      sha256 "b328ace309793f8959ac62916f64885a914e7ba0cfff53196bf4891a5a19ed28"
    end
  end

  def install
    bin.install "gitsy"
  end

  test do
    assert_match "gitsy #{version}", shell_output("#{bin}/gitsy --version")
  end
end
