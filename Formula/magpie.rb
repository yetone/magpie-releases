class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2682/magpie-cli-darwin-arm64"
      sha256 "be0e0693a80c902a7f929947240be98808a542fab22480bb22661f4e10bd9972"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2682/magpie-cli-darwin-amd64"
      sha256 "5e037e80dc1074038626652f5c20320313f0818a1d924bbdb81f96a094fe30ca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2682/magpie-cli-linux-arm64"
      sha256 "f9c6b411e45f921efd6cc7260a4896204ba59d1243e1e365c57ad60adea9b4df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2682/magpie-cli-linux-amd64"
      sha256 "c8efcc394ff4bab7d30c004948807f322cb7c3c8a429f204693120090edcd245"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
