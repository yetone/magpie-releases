class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4488/magpie-cli-darwin-arm64"
      sha256 "a71b0a7318369b8889a402db8ba96845be7c6cc48068a9d84d861dbedba17947"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4488/magpie-cli-darwin-amd64"
      sha256 "07f61767d2843fd1b6c893c67770058e03e1dab18e316dbeeee803d1e5ae8487"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4488/magpie-cli-linux-arm64"
      sha256 "9c262b51d7465d34752b008022308723914d058e0be8e3c23492e4e41f1d61da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4488/magpie-cli-linux-amd64"
      sha256 "9a919d338f7f2212ae0ec72a7576e46b06a6b56fd4cd6020997b9a9c6fa14bed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
