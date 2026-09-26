class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.140/magpie-cli-darwin-arm64"
      sha256 "618118881a12eea24c6fede43415b1f1582f614642fd194d8a81ce21c22c7d9f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.140/magpie-cli-darwin-amd64"
      sha256 "57fd4cbaa79979066fd4593554bbaa58a7d8cb70857ff07e7bab0d7261762b43"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.140/magpie-cli-linux-arm64"
      sha256 "110df3d9af9f108dc3b109d5bceca750a74ff00c683fe0fe7007c3754ce29d24"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.140/magpie-cli-linux-amd64"
      sha256 "fc6a251f8f6d9f655223ca8eb613509341c6e5a6b5f11c1e57d73c7d7cf8260c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
