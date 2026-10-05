class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1022/magpie-cli-darwin-arm64"
      sha256 "6bb24c966ef84dcd8db820351a086ad73a4873653f31271937e27a67e16a4377"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1022/magpie-cli-darwin-amd64"
      sha256 "a4989c7d3e8e0f77e65d182777efc6b0ff6f6f6b76063fb9285d17567cd52735"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1022/magpie-cli-linux-arm64"
      sha256 "a66cf11637d999d618a5063fdc4f751a4fe21b90a418b84640e1493201bfe407"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1022/magpie-cli-linux-amd64"
      sha256 "59afe26b4248a5b9c6d7792a67ed39b3489f901c9233151a66b6c433bcf16ab6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
