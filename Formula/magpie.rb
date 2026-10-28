class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1842/magpie-cli-darwin-arm64"
      sha256 "69e140223074dc60101fd99035f890b9af16c0dda9a31b30327e615e9b5a54d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1842/magpie-cli-darwin-amd64"
      sha256 "500ff6a6f860499f5e0336b9ea0d4dfb2d1d74193a3128ae93341990de1c4f15"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1842/magpie-cli-linux-arm64"
      sha256 "576ac415ca44e811691ff45118321f7137659361e406963a6fc823acb6e80871"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1842/magpie-cli-linux-amd64"
      sha256 "3b38e2ecf1006843087d7b4f64a1a0c487eddd013e9aa718d0d6a608c4ec1b95"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
