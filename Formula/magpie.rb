class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2595/magpie-cli-darwin-arm64"
      sha256 "83aabfd1c857992d5617519e41e1802b31681169f827c513eb13ca406a271f5e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2595/magpie-cli-darwin-amd64"
      sha256 "b22e60e565af2da64fb24fa026f088307ad9e0bc6c463b04f2ab8ea77dc12a24"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2595/magpie-cli-linux-arm64"
      sha256 "ce493b85574c96af0c00a3e4fc3fd1534004dc7618ad0cfc39820b386ab73a05"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2595/magpie-cli-linux-amd64"
      sha256 "19a1d862797373b469d3f25449ea8569e43b40f92a0ccbd0019e6ae9033d0565"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
