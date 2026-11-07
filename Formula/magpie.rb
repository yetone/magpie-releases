class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3288/magpie-cli-darwin-arm64"
      sha256 "49731a1028b482b1bf9cd0073425daae7a89d7ca453e324c8bb53bab87ff6ad2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3288/magpie-cli-darwin-amd64"
      sha256 "81090471c4a22e415cadc8e28047ce877ba5ae97457311fb5172ddeaf5f26c70"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3288/magpie-cli-linux-arm64"
      sha256 "1d1e81372d039893bded6b92875166cb170a827b1ace7fc23ba2e1fe81309d96"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3288/magpie-cli-linux-amd64"
      sha256 "1e457abbd4b4655968f00130f2f5682f60500a5ed7446ff9752e1bfae7aae9fc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
