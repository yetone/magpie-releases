class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3334/magpie-cli-darwin-arm64"
      sha256 "192213955a21d5fa33629f318d4301fb5a6a7632228ea914c49d2b84a113376e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3334/magpie-cli-darwin-amd64"
      sha256 "6a706f7a305361abe1b7f04718df80ffe3102f6a1e4a64d56e34ce7388d78d95"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3334/magpie-cli-linux-arm64"
      sha256 "d555050fc90e6b865c7786c8c76930bdbf4d0f458f1b809cce317303d8ade859"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3334/magpie-cli-linux-amd64"
      sha256 "6d6ee694c044859e9b41f6ce1da9771601ec8dd8ba1e69fb1e54bb9e00ff1143"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
