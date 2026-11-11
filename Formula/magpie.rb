class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3740/magpie-cli-darwin-arm64"
      sha256 "ab3855b9ef087cf47d2b811959d5112517d1e265b38c1ea1c4e5347170bcb2a9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3740/magpie-cli-darwin-amd64"
      sha256 "306bc1628da9b7718f3fb13f61876c2acc2ea32de73a9e7d52e719e34f8a5725"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3740/magpie-cli-linux-arm64"
      sha256 "64104abdaf6beac80ada106214204e595d6cdcc3a8c9c3aaabeeedd06f4ccb2f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3740/magpie-cli-linux-amd64"
      sha256 "305351596bc76ef93b82992c6ce23b8f7eadc1c24620938e464b8b8828766e8a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
