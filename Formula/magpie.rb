class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2576/magpie-cli-darwin-arm64"
      sha256 "b1b86390574ccba1c421cc1cc5aa059730e86658bf77eb7da84cc1797097bcce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2576/magpie-cli-darwin-amd64"
      sha256 "098a8313732476c414500e7503dcf3ea43a37471c44bb21e9ca7d0cb0b00f12e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2576/magpie-cli-linux-arm64"
      sha256 "5420f98162bb4c1b0c9c0e1ed7072cf1086b45603d0675cac05cff7a2411b7bb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2576/magpie-cli-linux-amd64"
      sha256 "d2f17fda7a75a52406bf7d3647d7027ced4586ff51d4302e0dd3abc673fab916"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
