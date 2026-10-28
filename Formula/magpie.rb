class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1965/magpie-cli-darwin-arm64"
      sha256 "ac24035041e167da2902bfa91149ca758d4def3c68a2447a100e1fca0b556dde"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1965/magpie-cli-darwin-amd64"
      sha256 "4982e46eb04175365b2618740a8c3f41e6734d2c7e02dd38c6b9a654c5f40ca8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1965/magpie-cli-linux-arm64"
      sha256 "8f545cf66d1c46d024532d72cfc0f4d444b6aae51546462af4a29123130ba0cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1965/magpie-cli-linux-amd64"
      sha256 "d1874a1e3231df9571a9e5f0a095b641b47298a70e8f8091be94e45e9771413b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
