class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2994/magpie-cli-darwin-arm64"
      sha256 "5b5e3771c9cd239698d88fe0b369adc6d92c15cb07b1f96afc2e35057c4dadf2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2994/magpie-cli-darwin-amd64"
      sha256 "de3c96a1ca44d3028b4b4ead6d2bbd3b56f69ff31f0ab730d41cbc1833b21187"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2994/magpie-cli-linux-arm64"
      sha256 "9ea2536434c186c8bca0afcf32de90fa8cb6677042a41d4cfb4c1928eeb07e5a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2994/magpie-cli-linux-amd64"
      sha256 "d9f0764ec867aa8c8ce0aab881245d83a8f91a3abe52cc52bcb14fafd51f794f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
