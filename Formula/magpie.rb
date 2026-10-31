class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2465/magpie-cli-darwin-arm64"
      sha256 "a15690e658e89ea4a5de830273ade758f63f34ab6ba64fb7611fd10a33ec48fb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2465/magpie-cli-darwin-amd64"
      sha256 "d7f0bdcd6f71c7bc212cd6f1c6c81c64cca867c0a20bf1de6548690fd5168053"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2465/magpie-cli-linux-arm64"
      sha256 "d508fc41c7c8838ce5d34be23103fdab390fd566f97d01834ed005447db336f0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2465/magpie-cli-linux-amd64"
      sha256 "4de50642d237c857920472a5904cb9a88fd478a956d60949d226165a250dae91"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
