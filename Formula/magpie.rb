class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4819/magpie-cli-darwin-arm64"
      sha256 "d266c0b11a82c4f087269ffad5880f7ceec43cfa44e0f2ac7354bc43054b02c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4819/magpie-cli-darwin-amd64"
      sha256 "b1625c803e77e8e54a496b0eb6c5ce3d527495d4d0e29bb335046f203cf0af6d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4819/magpie-cli-linux-arm64"
      sha256 "1ac1f7476c618e48b055870214fb473b5e7a4b2d7b51eb9f475749857941bedc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4819/magpie-cli-linux-amd64"
      sha256 "059d6f8d7d9bf387e0167115b067ddcde60e0f08ddc818da050e50e1ece6e3ae"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
