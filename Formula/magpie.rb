class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3810/magpie-cli-darwin-arm64"
      sha256 "764d9459502ce2a7ff6ae11a3416635d14b37bc5f59aaeb6a90d0800a401d21e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3810/magpie-cli-darwin-amd64"
      sha256 "b0517bdcf6117109c8fea77cc769a2e44d96dac1392c2141e3620cee768ca4e6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3810/magpie-cli-linux-arm64"
      sha256 "a17c415e314d70a1b45985931abfe2a645dc36ceb153e5daaf8901632ec19010"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3810/magpie-cli-linux-amd64"
      sha256 "a260279afdb88ae0825461c91680182a1e59958e3b5ac3360e980401ffdca668"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
