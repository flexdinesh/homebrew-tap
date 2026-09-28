class Gitsy < Formula
  desc "Scan directories for Git repositories and show a compact status table"
  homepage "https://github.com/flexdinesh/gitsy"

  on_macos do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.6/gitsy_0.1.6_darwin_amd64.tar.gz"
      sha256 "ecac429b84eaa53e864cfe9ef894f9052aa8dd0131fb7e449d566a1c4b720c84"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.6/gitsy_0.1.6_darwin_arm64.tar.gz"
      sha256 "7806e4dde7978ecc46cb6eb80e1b667ed7ba6f3667f9e3eeed67a3898afadbdb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.6/gitsy_0.1.6_linux_amd64.tar.gz"
      sha256 "89a7ca3b9ed7a4c6852d368404656e15a265e79f9afefa50175a1bfe09073a56"
    end

    on_arm do
      url "https://github.com/flexdinesh/gitsy/releases/download/v0.1.6/gitsy_0.1.6_linux_arm64.tar.gz"
      sha256 "f1a003ad13ce76c68d998ffc6b45d1969519d6ea3d9ef270ac2527fdf63f7259"
    end
  end

  def install
    bin.install "gitsy"
  end

  test do
    assert_match "gitsy #{version}", shell_output("#{bin}/gitsy --version")
  end
end
