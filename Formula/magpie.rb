class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4520/magpie-cli-darwin-arm64"
      sha256 "3613633a82eb4fde65db009018f4e5ecaf390c3048cba68593f054654700e2db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4520/magpie-cli-darwin-amd64"
      sha256 "46618e755b710542193d38f74a3fe9414478b619c16d61b519dd8113032b828c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4520/magpie-cli-linux-arm64"
      sha256 "d9c06fbf72cfaefdcb82b5d33dbf916aa5dd103e5bd3ebf0b96f1bfcadd45579"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4520/magpie-cli-linux-amd64"
      sha256 "db4397ac03d6a26e0d3e5446550a222b3720b3f02f55e0b390f344e771d11893"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
