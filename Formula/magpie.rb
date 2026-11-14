class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4222/magpie-cli-darwin-arm64"
      sha256 "f7c34d8739a9c1b69bd2bfc4c12e402d41279466c06b557f9095c00565d0b623"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4222/magpie-cli-darwin-amd64"
      sha256 "4a4aa310cd5f49f4650b446abbf2ba940f6563f5cb4b833cfa6d2ba497a60cb2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4222/magpie-cli-linux-arm64"
      sha256 "de30bdb65b25bcab491946b4fd36344571b444cd49a9f5f4857093f4a5005f90"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4222/magpie-cli-linux-amd64"
      sha256 "5a9fd80d96db86cd5b566553d3a66fb18bddfd9fb45870bfa54250a4ffc55460"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
