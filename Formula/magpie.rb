class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1141/magpie-cli-darwin-arm64"
      sha256 "26b98ad9f5eb19cfa21e9da747046fe9969a46c92a50291d828b0ce999d96a9e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1141/magpie-cli-darwin-amd64"
      sha256 "06b2e3996662115045d42c88bfc41f988100a6f0ca1a22fec92eb817f7a5cbf7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1141/magpie-cli-linux-arm64"
      sha256 "4c6be389a9aed255bc1edbbdc1bdde312c2b188769e0ac0c48a7c3bd40e2c2ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1141/magpie-cli-linux-amd64"
      sha256 "90035828b08f4bffeadcf3a9860582491e47031cae11dfcb395dd8c72f132efd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
