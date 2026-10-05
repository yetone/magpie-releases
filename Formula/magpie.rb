class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.992/magpie-cli-darwin-arm64"
      sha256 "b87267c3ef6d2348d6351868d45ee65568888cc1ac6939f8d9f5afcdada8302f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.992/magpie-cli-darwin-amd64"
      sha256 "e38e247d4bf9b3424ff9a6a1cb8c0d93104b68854e95478e73c983eeb6eccded"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.992/magpie-cli-linux-arm64"
      sha256 "25e7711e8819f6e3278b84eeff586964718d580e1527e4a39bce3d4fbb4e353b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.992/magpie-cli-linux-amd64"
      sha256 "1bdafaec686701dbc8ef26a59a42ffd96ec762911b25886d516adcff12dd8fbb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
