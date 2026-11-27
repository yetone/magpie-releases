class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4936/magpie-cli-darwin-arm64"
      sha256 "1c581557d48a64e42e393308e2e512d94202d47ac52e26a110172e588786c8fa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4936/magpie-cli-darwin-amd64"
      sha256 "63e5714c5ae83de65a912f742bc97cb19698eb1ac45195d13e605837b2ce287c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4936/magpie-cli-linux-arm64"
      sha256 "4069f952a6701aa0fed0e2fa637749f84bb509469188e45878352961c60a75d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4936/magpie-cli-linux-amd64"
      sha256 "039ccf580f5f13ba8fda1f31d0ccdd2132589c48b6dfc32635e660a2f398e8a4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
