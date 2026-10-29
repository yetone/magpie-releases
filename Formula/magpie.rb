class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2107/magpie-cli-darwin-arm64"
      sha256 "ef9c8b6c9641231220516ddbb82b7b1d3df50907cd153f0c54fd8797fa953c8e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2107/magpie-cli-darwin-amd64"
      sha256 "906f85a6afd7429fbc69a43589c396edb78df22f6107125aef27e0ba39253e2d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2107/magpie-cli-linux-arm64"
      sha256 "fd242d4d2f08bfdf5b9ae7521b705775fe70db004303e608ddc19162868b9492"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2107/magpie-cli-linux-amd64"
      sha256 "f3f9f38b56ce25ba5b473574118aadbb0bc5672be9cd4d1cb2e35244a6b3c942"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
