class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4330/magpie-cli-darwin-arm64"
      sha256 "2d77eeb55b9fe207e7a6b27efde2aeba264be9aad1bbcb5f8b997bb45eb9db7b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4330/magpie-cli-darwin-amd64"
      sha256 "43d83512ac84bfbda41e4e1bf1b2d932d281d43c6a96e1a516b670e12e83080e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4330/magpie-cli-linux-arm64"
      sha256 "07aa97614a1f9aa20d4d2acf1cbe261dae9c3de224f2ecb8d5fd5250dd719815"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4330/magpie-cli-linux-amd64"
      sha256 "adb1fef9af35ee3b27d06960f41b124c04a2f1f116751e429344c595451a564f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
