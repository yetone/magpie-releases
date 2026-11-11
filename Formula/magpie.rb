class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3734/magpie-cli-darwin-arm64"
      sha256 "37043507b3e9f7b5d2b5bca7979b95a5a263d4d7af801f11b0e1c37e20a99bcf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3734/magpie-cli-darwin-amd64"
      sha256 "bd0aa6a7bd8a5ce53c58dcfdf1de5a9bfbeb23efd19ff84f5bdea9f7408fd2d3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3734/magpie-cli-linux-arm64"
      sha256 "ffadab70188ab30602b4a83e922010c503598b1962652bdc98569ae8ac03d40f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3734/magpie-cli-linux-amd64"
      sha256 "639e17ebaabf9fd24bd2594ef0845e7cb48658cee7fc09b90bdfbadac2dc644f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
