class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4800/magpie-cli-darwin-arm64"
      sha256 "fb576ead4a0879554a28a9fb20cadb1b7b1949963830fcdbbb434211ed200393"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4800/magpie-cli-darwin-amd64"
      sha256 "4a2c58a4343f3396d6d48be9c0eff1a1739b68a1775c54a99fa72cc9c03a469b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4800/magpie-cli-linux-arm64"
      sha256 "fe16df08c3e7996cfa5af773e7674676520260498b538a9981678a0bc26d6680"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4800/magpie-cli-linux-amd64"
      sha256 "8421497b2f730e3ce3c7e536c78249f05f6a81683038b3e4e8e53ed5244848fe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
