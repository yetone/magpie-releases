class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3178/magpie-cli-darwin-arm64"
      sha256 "556e4c4dfe3869df6b3dbb9bca06626ca52acafb19aac89abc01dce108b4cd70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3178/magpie-cli-darwin-amd64"
      sha256 "1b3dcc498d0875e595607bbff7e583586c1856b743da1bebf96acb60f9db9b8f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3178/magpie-cli-linux-arm64"
      sha256 "f450973428f4e0034a663beab6e90044d1587ffc978441ebc4862101fced2338"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3178/magpie-cli-linux-amd64"
      sha256 "832b3c4ff3a8a25107c47ea12f37b7bc31359eda2608bc1dcead0ce7d70a739a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
