class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2548/magpie-cli-darwin-arm64"
      sha256 "0ef189b3f6eaf5cc94f87d64505046c8cdd275b7bc3ccaf1eb92d30f1b73e79a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2548/magpie-cli-darwin-amd64"
      sha256 "b1747e634e16d0f7e9ee1c14ea5686db0dcd22168199ea95a79888f2f1afabb9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2548/magpie-cli-linux-arm64"
      sha256 "2cee072fa7cf17702d9b716932b9553393ea0c98aa96b6ca22c72818b2bfba11"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2548/magpie-cli-linux-amd64"
      sha256 "3feed285f302336cc533d4e83397c2e8c9df1ba27995161fae248962ce81449b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
