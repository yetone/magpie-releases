class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4054/magpie-cli-darwin-arm64"
      sha256 "53e681b663bcb3cc334593ca995d5c750f83ce4a2f1ba2fc4c2ec72f8e982a49"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4054/magpie-cli-darwin-amd64"
      sha256 "5282e17d549d79f7de49509294f4233d8731e3541dab3c65cc2589aa4ac826fa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4054/magpie-cli-linux-arm64"
      sha256 "6d9357c8a2a4e6cd4aabbea228006236592411aedfee4e3953a139d533ddb42c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4054/magpie-cli-linux-amd64"
      sha256 "c216c6e630b6a4eaf86b31db06bbeb5fef1aa3a8c18ddd1715ae01a00ec5b1cc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
