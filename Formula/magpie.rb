class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3598/magpie-cli-darwin-arm64"
      sha256 "a9db1c0ba26c9efc07240e34c1ab2854b38bd437facd0265b82a0a684ccc168e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3598/magpie-cli-darwin-amd64"
      sha256 "b4eba1b0b84f561cd15f26634bce11eedbbf1666595ee6e136f2be617097555b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3598/magpie-cli-linux-arm64"
      sha256 "994cce752beee47d96c9de7c5ab6654a2374ee92f9cb8a97aaa8972ec4be4137"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3598/magpie-cli-linux-amd64"
      sha256 "13183e92af4cc41b6acff30f8d0c9b6572e15b8d26da13920a78025fe7578a58"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
