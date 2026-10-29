class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2040/magpie-cli-darwin-arm64"
      sha256 "f2c2faab2a20df23390d81a43ac0c2dbfb5236c24b6f1dd70faf7c1cafbb27d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2040/magpie-cli-darwin-amd64"
      sha256 "a08e4df6819a620b74d2187e9fc93a5ef021e282be1d1fd0bdfb828f108a1e0b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2040/magpie-cli-linux-arm64"
      sha256 "1d0bca3d0b96e84cfcc81f225acd63cc828d3e63aca74a07edaa0da98ca42e07"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2040/magpie-cli-linux-amd64"
      sha256 "c5e21babe2303c4992c24d35ee8f29a39b02a087f8274130dd8f748affe8afce"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
