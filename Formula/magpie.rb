class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3980/magpie-cli-darwin-arm64"
      sha256 "4baf408abba094e963fd21be55085a12fbec2f81b39bcdd4a12f60b37e266516"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3980/magpie-cli-darwin-amd64"
      sha256 "d64c8ef6df99f5c88e72e96bd840502831a8d1e4c17bd2dc565f6e86c2cc5043"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3980/magpie-cli-linux-arm64"
      sha256 "ab57a89b928a4fc3f0f2722fd8a3a720f6ca4ce99ebd7b24d752e3b2b64f9dae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3980/magpie-cli-linux-amd64"
      sha256 "f4767482d5dc5f048e8b868756fcf01c72bc5fa9c8cf41ab24dc12b60cb4985c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
