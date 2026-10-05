class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.968/magpie-cli-darwin-arm64"
      sha256 "65ea361ba7835e764f19888518be586a1a6010ddd5f091b50c1cb58590568ce4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.968/magpie-cli-darwin-amd64"
      sha256 "c941833a80c2a6c4aaadc6c9e589e8a041eff3d69091dfebce6f39c653947951"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.968/magpie-cli-linux-arm64"
      sha256 "a15212bfaeac74650ece05ac60b906d29dfe19dc3338a166985f1d0bb7c57cc9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.968/magpie-cli-linux-amd64"
      sha256 "4d2628917fa2d96707dd09c3e67829a983584c575456adaf7378e2031d91077b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
