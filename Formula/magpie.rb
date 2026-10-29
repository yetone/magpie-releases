class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2025/magpie-cli-darwin-arm64"
      sha256 "f602c3b17976fff7e850ad9ec7f23e208260322dbd7e6f2f04cee45d63cac579"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2025/magpie-cli-darwin-amd64"
      sha256 "34a3892c094c163086d99595e3f8eb44a0cb51d3e73ed7d2d1b3a141a2e138e5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2025/magpie-cli-linux-arm64"
      sha256 "e1047d35fde730ca87bc69f2d010716f0f94d8b81c4fc3361c23baa8707640c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2025/magpie-cli-linux-amd64"
      sha256 "400e432e7c28bf67346e7d304d9d26196994e5e524890d853f0b4d325996afbd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
