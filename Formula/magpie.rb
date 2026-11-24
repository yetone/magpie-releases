class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4747/magpie-cli-darwin-arm64"
      sha256 "cd0e738f45646527ff843cc41fb1ffa7bf6d28dc4dd5591f4de4b5e6e000e3dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4747/magpie-cli-darwin-amd64"
      sha256 "f3d999f6ca9b2462941a4a563d2fdee46ba4f88da6d6bec48b253353751769cb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4747/magpie-cli-linux-arm64"
      sha256 "4fdad42a612cbe3e72ac6bd6d7f0c366c2c25c63037045cdc648ad87a85786aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4747/magpie-cli-linux-amd64"
      sha256 "3482a7ff9b6489b774b3c8a8ae48f73dbced9b42a35e241892234c60af1565d1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
