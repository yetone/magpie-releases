class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3265/magpie-cli-darwin-arm64"
      sha256 "09ac50cc37c1076ed29f3a8170e4feb62820f417542bfb4feec2171bacbf8156"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3265/magpie-cli-darwin-amd64"
      sha256 "85defe67cf6d3c9ffbe31b57bfad5d9cc5be772f5c7ba61bb2c6c744079d4350"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3265/magpie-cli-linux-arm64"
      sha256 "e57e8071130366ea6948c01b420893de9e32c1935d2a0a05ee02f9a0a7f40ede"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3265/magpie-cli-linux-amd64"
      sha256 "ecb30a068a9da35381b018d47473ac97f99a9511b3b802ec9e61ca261d489e29"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
