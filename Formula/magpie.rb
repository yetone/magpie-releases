class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3542/magpie-cli-darwin-arm64"
      sha256 "360c02f21df78ba9ef7a289b8b51d66878caa6202c9ded72a6dca6cb17028b98"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3542/magpie-cli-darwin-amd64"
      sha256 "46719de046624984041c580606dff7bdfebef935cae34686f34829a47a756bb4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3542/magpie-cli-linux-arm64"
      sha256 "9d69f764173e6113eae922ea97ff4a7c216e3f7f5b07bb353e355e71090d9ebc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3542/magpie-cli-linux-amd64"
      sha256 "bb698bf26bbb69d05c4fb7cac6dd2690c6e51e8330f55451eafee551215e7977"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
