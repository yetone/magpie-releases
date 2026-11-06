class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3151/magpie-cli-darwin-arm64"
      sha256 "a14798ffa7d09f6d934266e34d1d8f6bdb44065ffa56337f3f11d0b57f008127"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3151/magpie-cli-darwin-amd64"
      sha256 "12ce67fb8fb60df0f4d1450c94a2d83762e62989c1bd4e9ade511a50af7c96d0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3151/magpie-cli-linux-arm64"
      sha256 "74cd3a5fe0ce00a84d977df71eb1433dbd4f275cccf69d49d45a94965f24027c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3151/magpie-cli-linux-amd64"
      sha256 "2513ddae45276c3184897fab2a52cb9b35bcd14ca765afb29d245f58dff49e37"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
