class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2745/magpie-cli-darwin-arm64"
      sha256 "8136389c4682796033177c48003263c33ceebb0c013cac479070a66dc05fc17a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2745/magpie-cli-darwin-amd64"
      sha256 "85aa772dda29bd586564de9c1393855a28c2adee07b4c3a3edc203e5c620e51f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2745/magpie-cli-linux-arm64"
      sha256 "31d683b0b0c9b1141dc364ffe957e2892a56c1602e0d79257e9e10f34c1337cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2745/magpie-cli-linux-amd64"
      sha256 "143234ed92e13261c0529a2449723b35ce39dbd9467587df0b3b1ae9957c3d55"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
