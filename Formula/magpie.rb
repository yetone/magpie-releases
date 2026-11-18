class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4463/magpie-cli-darwin-arm64"
      sha256 "6f3d07db19d77d37ad3946e7ed989ae185366e9e7c1be7879af166147c26594d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4463/magpie-cli-darwin-amd64"
      sha256 "4cd4e7b778c14d80a002876491740b2387b654056476d0bae11c297abdbfc39b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4463/magpie-cli-linux-arm64"
      sha256 "ac268489ffab5277cae104fedfde666967a321cf2e42526dcec3b4611a8f3654"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4463/magpie-cli-linux-amd64"
      sha256 "5f73f9cac2c05cd7689e3b500d5b5b191960fc31a2543f4c3e792d56fed7725e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
