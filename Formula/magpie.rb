class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3187/magpie-cli-darwin-arm64"
      sha256 "52cec1a802ddfa537dff9112a33601dfadf2eaeabdf6d8639b120e795a8f8e4a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3187/magpie-cli-darwin-amd64"
      sha256 "30985abe00ea7797ac7f07a8a9bcdd1008daffaeee94b17bfb643ae5b82f58b6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3187/magpie-cli-linux-arm64"
      sha256 "119663852d88811ec6a54706fa3dafd0f0609f11b045b637525202b91c612b34"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3187/magpie-cli-linux-amd64"
      sha256 "a55d5b4e2796da591e94d981f8fae1dcd4ba3d30fca5b324f701b2d64707289f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
