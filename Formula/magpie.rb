class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2831/magpie-cli-darwin-arm64"
      sha256 "85c0b2782cab604126dc644ff78462eae7b637d96152794cd5e1de1f5a1eca5a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2831/magpie-cli-darwin-amd64"
      sha256 "b0d357e31b6ebd4867f52495ed2465a5c51968b4339dd4b1f448cca4f0f0664f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2831/magpie-cli-linux-arm64"
      sha256 "e44aa0e4955783db060f77af5eed552cec82bc77416a12168d6dc20297c4a6c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2831/magpie-cli-linux-amd64"
      sha256 "97e4f39187ec93b0a06cd8e39f46fe21a1f3753dfb8dd6d73f429d68ac1e9c1e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
