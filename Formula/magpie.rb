class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1926/magpie-cli-darwin-arm64"
      sha256 "8be70d3b908399544045d16b03afdc01398b3ac37dddb755f5b9baf3ccca2f32"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1926/magpie-cli-darwin-amd64"
      sha256 "5b0c3cc2be93887874324e4618da68b432feb3361407ef8cf891197021921963"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1926/magpie-cli-linux-arm64"
      sha256 "7fce0193d86037160d0f0a0f33c308c0618d465211307a708c92752af5020de4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1926/magpie-cli-linux-amd64"
      sha256 "7d5f6769e046505782f51afaf8ae1acafad8252c81aefedde288862262ec38bf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
