class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3197/magpie-cli-darwin-arm64"
      sha256 "b107aa41f3b2cb9a62d3113c8e379672ed05df316fd70c4405f5035667e790a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3197/magpie-cli-darwin-amd64"
      sha256 "f6a72d3b8186a11a946f842af446512db2619e2e671ee16d93c7224ef472cd92"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3197/magpie-cli-linux-arm64"
      sha256 "09872c7d90eb9a794e30bfb604005817e2c14a74b2756ee0f879e275fbf72666"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3197/magpie-cli-linux-amd64"
      sha256 "54562ba81bee365656886450913d76eaac4699e089bc0cf8629320fbabd3e1fa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
