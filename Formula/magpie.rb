class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3290/magpie-cli-darwin-arm64"
      sha256 "4aa508aebaf00e36f696f6a3283fefefbaecaf48b532eebdc22aad953875dbef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3290/magpie-cli-darwin-amd64"
      sha256 "9f5829510b053e754c204f3216541c8282a24d038c9b56a69e66214ee6bd7002"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3290/magpie-cli-linux-arm64"
      sha256 "eece282f1e35555cb775aa0b9afe11ed6acaecbce440b353785f0a154927ab57"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3290/magpie-cli-linux-amd64"
      sha256 "c968a542aab216db5aa2de28cc9fb40f1d825eb033bf859da7d8287a9396127b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
