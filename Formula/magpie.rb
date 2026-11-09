class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3413/magpie-cli-darwin-arm64"
      sha256 "384bfe2e675f0798d7e965c364a24380f150fee486bcd3d565cf46b89429dc76"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3413/magpie-cli-darwin-amd64"
      sha256 "d005c5d3f93a759b6fd395391300d821d8f40fd2159c71bc83c611c08f0ecb00"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3413/magpie-cli-linux-arm64"
      sha256 "d9852121b2df91185fbc578a95bd14c575e64c90735689e9a7ef0e388312d6f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3413/magpie-cli-linux-amd64"
      sha256 "7e2bc9ac885e5933b3837133727dfe56d750aa68fdde2608c85761188d55e6f0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
