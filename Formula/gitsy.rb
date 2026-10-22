class Gitsy < Formula
  desc "Scan directories for Git repositories and show a compact status table"
  homepage "https://github.com/flexdinesh/gitsy"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.11/gitsy_0.1.11_darwin_amd64.tar.gz"
      sha256 "a0a7256284c22c60d4107e69328442579aa5a781aaf30e145e7f269018e3e678"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.11/gitsy_0.1.11_darwin_arm64.tar.gz"
      sha256 "d3d8f0ddb1141b2a7cf0de55926f2b8187443532c186197a3da1dbe635426637"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.11/gitsy_0.1.11_linux_amd64.tar.gz"
      sha256 "8fca9aa4e57b7b7ef9ed330389c8042533a89f1e684b9ad31cbba5fe41cf2d69"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.11/gitsy_0.1.11_linux_arm64.tar.gz"
      sha256 "c094886ee97b52648e0d374af2e5062f48a901ac112e55c71b4838543f1e0df8"
    end
  end

  def install
    bin.install "gitsy"
  end

  test do
    assert_match "gitsy #{version}", shell_output("#{bin}/gitsy --version")
  end
end
