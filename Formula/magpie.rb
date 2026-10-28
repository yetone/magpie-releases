class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1972/magpie-cli-darwin-arm64"
      sha256 "9cceca94293cc2cc8c63daa38adccb9bcec169156b11609cc8f0bb56d131ebbd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1972/magpie-cli-darwin-amd64"
      sha256 "7aa637539e7c99431d697d80ec9c427a65ed135c0e0395a4aa20f096f75adda5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1972/magpie-cli-linux-arm64"
      sha256 "e7ffd789bc648e7cfa06c8b06afb1bf9e4ad83229c49aaa451ec42091e6e008e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1972/magpie-cli-linux-amd64"
      sha256 "025075137db27dd3a17599141508ab7241f85156f4727a359abb75058d140f32"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
