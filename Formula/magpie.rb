class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2808/magpie-cli-darwin-arm64"
      sha256 "039420a94a5507113c17f5a31851ca9bc9cd3b53e55b89d168cf6a8accede78e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2808/magpie-cli-darwin-amd64"
      sha256 "4f630c102729ac220ae9ab85c822afb1b6dbd63f55df0e0eb505ca9399be648d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2808/magpie-cli-linux-arm64"
      sha256 "6905fa2409bbe1daad52c148da7453e6d20476854a5e119ac783266d2a1f6ff6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2808/magpie-cli-linux-amd64"
      sha256 "051498474a7bf4b705b5cee91a5e719d7175f4fe5adfa86a4c985f11ca30984f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
