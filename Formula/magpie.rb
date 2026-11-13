class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3969/magpie-cli-darwin-arm64"
      sha256 "2e6cb56a1a969dbdc91f5c2d629971403bf5f03544e4ca38e6b6aba27dae67ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3969/magpie-cli-darwin-amd64"
      sha256 "1c58ca669797c9b6b8309fcab5c1145b6529cd00eaf8184621d9170403d32a07"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3969/magpie-cli-linux-arm64"
      sha256 "c176adae5e15580215683508e600d64c3628c4a8ec3d4309f12f302bfd8b10cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3969/magpie-cli-linux-amd64"
      sha256 "da0599c4fce9c878a2a9eb851be1c58e9a0be3239f67d6213cfbdc0397158cbd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
