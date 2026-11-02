class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2760/magpie-cli-darwin-arm64"
      sha256 "a5d99c3d419c9d7057ec412f34adc51c8f57dd10b4c00ccb103ab81accd6b62d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2760/magpie-cli-darwin-amd64"
      sha256 "92b7d575a31f9bbb58904c365db6c024c743905d1c7e1b6b03e3e62911ed6d87"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2760/magpie-cli-linux-arm64"
      sha256 "026a0a67e8470b9e39abdbd75072766ea0b2d46dc2172aced7f1cae148541e11"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2760/magpie-cli-linux-amd64"
      sha256 "e254ffeab42b36cee86a45f4065c54bc9ae9b1393fddae9f69691b1a25f5b87b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
