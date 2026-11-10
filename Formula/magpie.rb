class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3518/magpie-cli-darwin-arm64"
      sha256 "924cd94b5730e55bf4dc5adb0c826514bccba5a9ebe65706219fe819ef0b66a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3518/magpie-cli-darwin-amd64"
      sha256 "6dd79cf6d71f2caaefc10ace62a05039c1e4f2e4fea61a2d0b076012011162d0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3518/magpie-cli-linux-arm64"
      sha256 "4e132be2aa86db2976f02f3b93f4bfa6c03b86a9e41510fcec5ad28b247bbb5e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3518/magpie-cli-linux-amd64"
      sha256 "7d205a5f8e203e056fba0ce658542b032efc86191867786a2c7cc8582883793a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
