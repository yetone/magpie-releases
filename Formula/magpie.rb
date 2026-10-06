class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1079/magpie-cli-darwin-arm64"
      sha256 "ba7500f2f5d335b2e961de18a350030a53d87e8db435375a9040756cc9aa070b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1079/magpie-cli-darwin-amd64"
      sha256 "d425c440c533c608b527c850c34a8fba0a165093e0bd0f202afbde944b2ca487"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1079/magpie-cli-linux-arm64"
      sha256 "eb4e5f337f8138353bc43d01b6229067259c5fb7c543faf565a0c0a94b638b34"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1079/magpie-cli-linux-amd64"
      sha256 "365c659220016c0a16844e152b411666530d800e0319ca9b1b9994b720bef6da"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
