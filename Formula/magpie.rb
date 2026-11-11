class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3679/magpie-cli-darwin-arm64"
      sha256 "5103aa1ecb6ef9eb38830ed1556fad08778ab36d16fda317c5edf80044d19dae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3679/magpie-cli-darwin-amd64"
      sha256 "1dcd5614ce3e18a6da344a7146cebe9494bee42a438c7a58b27e10c83352e6eb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3679/magpie-cli-linux-arm64"
      sha256 "c7e0f640b136b375ecf4019e9b51305182dd68a43ed94c292ae1689ab4062c88"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3679/magpie-cli-linux-amd64"
      sha256 "1223a85643f0167c1a304fd864980a840bbef3d5b553d517b7e4c8b94dc4547f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
