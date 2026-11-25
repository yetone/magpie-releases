class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4782/magpie-cli-darwin-arm64"
      sha256 "f7f63f4f095bc6e290ba006d35f90c4b0901e9511c80158b712ad992945478f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4782/magpie-cli-darwin-amd64"
      sha256 "77ab34739ae8b625ee517556117a4fb763ae147f4226e79f4b0f7a9f4bad65ad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4782/magpie-cli-linux-arm64"
      sha256 "58e5a6866a73d74dd7cad85cb215c4be9762dd9da34f0874d30ce88e77f73028"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4782/magpie-cli-linux-amd64"
      sha256 "47d65df9aae5333c0c04a507e6ac2c03c4b89cb45eef0fcd0c7a31c0c4c252c4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
