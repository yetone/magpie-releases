class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2317/magpie-cli-darwin-arm64"
      sha256 "9834f6318ec50469c2e1b8dd038d853a2d157ccacae2be85364832741580f247"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2317/magpie-cli-darwin-amd64"
      sha256 "7f8dd430f1c53a5788d940538787ebda1e2519a4236800cfc3a33315b926590b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2317/magpie-cli-linux-arm64"
      sha256 "b2246b873c4ec23f94c5c8f26c4a84c51145d7b57597e521f5b26643faa02a4e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2317/magpie-cli-linux-amd64"
      sha256 "c3a0420f517e98622253e11a1c5f2c76aff04a430a1433d0c33e045bfbe46d7b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
