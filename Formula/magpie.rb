class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2632/magpie-cli-darwin-arm64"
      sha256 "42408caf998aeb5fa26ad8357d9bc066b56f578719fc6d3703da0156a22014ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2632/magpie-cli-darwin-amd64"
      sha256 "aa1779211320e51c493ebabf87f16300b7264e7ac04c64ebd4be1ef400327df3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2632/magpie-cli-linux-arm64"
      sha256 "60a650be80dc72f9ef9539ec8410173a677433cb2a7edc95ee46369785c20fa7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2632/magpie-cli-linux-amd64"
      sha256 "c61893331331d64fb985d393533bb3644745222f1915e8552fea1e05c3458c86"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
