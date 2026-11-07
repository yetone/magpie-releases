class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3229/magpie-cli-darwin-arm64"
      sha256 "575d214b3d902b452770e082e3a1b94527f58b2e6028445445976a7dc79b2d74"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3229/magpie-cli-darwin-amd64"
      sha256 "4e224c21d7b9fb0f46c65b98eb453ad983be30de56dbf11e501443d3dc6f3306"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3229/magpie-cli-linux-arm64"
      sha256 "698549fa9af09486337f05478ba046cefc1eca8fec8b93887bad5b1522885594"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3229/magpie-cli-linux-amd64"
      sha256 "bba5fdbde183ca40e188d9a8e20e794047d062bfeb2e6126bb03112ceea49e9c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
