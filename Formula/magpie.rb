class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2258/magpie-cli-darwin-arm64"
      sha256 "a03306883491dd7ba0bc805b65d3b4e464c0cab14cf50ea14f338ee0bc0d2687"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2258/magpie-cli-darwin-amd64"
      sha256 "d0581044d7bfd87a5a97d001b7b39297d9c45dc05d237475fcbbe824da164c59"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2258/magpie-cli-linux-arm64"
      sha256 "2bb321ce79147599ef103dd8d243a636fdf68a97519dee7724c2c8d9cd80c002"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2258/magpie-cli-linux-amd64"
      sha256 "ae888147d618c53b2eda7544c0fbf28b78b31e288dc7f879214f4b3d6151a490"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
