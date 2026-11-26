class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4855/magpie-cli-darwin-arm64"
      sha256 "859eb4d5dabc73ef7c03960e4d812531bddbcfe980709fe3203aa1151aaac08f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4855/magpie-cli-darwin-amd64"
      sha256 "2416a7b36b6b11004236af3fafb924b8ebebf9de2662e1437bb0d265c841164e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4855/magpie-cli-linux-arm64"
      sha256 "3a6e06b3175c274c0b15d6597a9d2840e4755adec3906a72bda0a2c3d40ba49f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4855/magpie-cli-linux-amd64"
      sha256 "a8acb6d766b27862fcbc64b9650365935c528865f398c19a7f309e7bc6184984"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
