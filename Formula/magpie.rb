class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4602/magpie-cli-darwin-arm64"
      sha256 "a73215e0e925e7d0a1b88ab5eb156be18778b80892b52ab897ea9ff382dbccf1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4602/magpie-cli-darwin-amd64"
      sha256 "ee8349d5e1424fe295ce46e16a5587a1e2d275a1723a935d31f271db81cd7812"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4602/magpie-cli-linux-arm64"
      sha256 "6d75e060b17fb17b913112bc50ef6799e64998db7fdaac5e25c6844e2f1bf438"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4602/magpie-cli-linux-amd64"
      sha256 "7b6a23bae7333ea93965047709f7ceac57fd363e45bbd7e32d40891cc22e6d08"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
