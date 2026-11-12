class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3862/magpie-cli-darwin-arm64"
      sha256 "8f7e7f5fefb916d13b925742f8fd66652f9c931a42a2d07f5b892868f5bc5eb4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3862/magpie-cli-darwin-amd64"
      sha256 "37f76017c865ff07a1e9b179344cccee52354cec25c3f1e6768758442407a4cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3862/magpie-cli-linux-arm64"
      sha256 "8cd208b0025c8756423570af55141183f07122455805307bb0550eff2a0a9834"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3862/magpie-cli-linux-amd64"
      sha256 "f26a94efcfea23648fc83bab19e3af4fa5267cefdffc55a4596b0d03cd9152e8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
