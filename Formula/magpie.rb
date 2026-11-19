class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4538/magpie-cli-darwin-arm64"
      sha256 "ac84de528e9a7eff2a49fd110830f5c2920ec7591133d4c46d4b1f7f74bd39bc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4538/magpie-cli-darwin-amd64"
      sha256 "f7c3a51cf7589bb0d34f7360c3b9479238aab5bd8c685b1dabad90d03aaa87ee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4538/magpie-cli-linux-arm64"
      sha256 "4d891c17b0b39f51f1c529ec6e162bc3941341d82f4dde3ae8d5ca683e2e9963"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4538/magpie-cli-linux-amd64"
      sha256 "154142c153079421208c7f181ae961c6f7a83c24f6c102d567395d5d9a256b27"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
