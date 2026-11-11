class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3792/magpie-cli-darwin-arm64"
      sha256 "006cfa722ae7d6c15f1bf941ec9336bba88e893ee6150e1306fbef5405c83e8e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3792/magpie-cli-darwin-amd64"
      sha256 "58dc5741499b0b266eb0e48f7e59fb65f235a865448aef28f00ba46486a06cb9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3792/magpie-cli-linux-arm64"
      sha256 "8c3b0e9dc441524d19ea64b1289cce1cea7ff52d2b094b7aa7e12ade9fc99435"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3792/magpie-cli-linux-amd64"
      sha256 "ab1c4a15b0336bd90326cdc4c96b9bf32c06d85e76d5f0dcdf15bb8a90916944"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
