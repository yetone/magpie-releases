class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1019/magpie-cli-darwin-arm64"
      sha256 "6631187454c045ef32d3b28fd60c5aae073fcc696d7bda476e59316d165cbc3a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1019/magpie-cli-darwin-amd64"
      sha256 "23d878e3dbbb21b61a9cda2731ba2b75512e0a593d311659cae5367bfff35ab8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1019/magpie-cli-linux-arm64"
      sha256 "cd32b5e2e3019dfa637ca5cc7836812fe843e67cafe78e0f6be4fb5dd075b17b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1019/magpie-cli-linux-amd64"
      sha256 "8eb3fc7d2a5798b1ebe74e032ff128b2f8ee520c2c5c8c69fd162524fa12b5e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
