class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5031/magpie-cli-darwin-arm64"
      sha256 "04e4a5848f06a64ff4e0a42ae594327ce7b0567513f6ce207148eeb801bf2583"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5031/magpie-cli-darwin-amd64"
      sha256 "778e9c144f0b8ed5184d7a7958b3fac1aca9e564fdb37e813175cc489cdccddc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5031/magpie-cli-linux-arm64"
      sha256 "e5468c0551082a82f12d1e43de6676a9ef4c2136eb7030f3fc6533aec4c17e11"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5031/magpie-cli-linux-amd64"
      sha256 "d13bc54bdae5d18e1f69e6ed821a9eda044e35facb31b616bb946bfe828ea384"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
