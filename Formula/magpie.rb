class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4921/magpie-cli-darwin-arm64"
      sha256 "1379240feac84e4e444c33cf4458cbd7b1479c9d0fddd768b9215fcb9e924d86"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4921/magpie-cli-darwin-amd64"
      sha256 "061ebd2b2802b60a06db7c074b4fb4171e4cfcd518b46cc71ee95641f0f9bd1c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4921/magpie-cli-linux-arm64"
      sha256 "3f8e668587a6b86620e6e4393db7360f91414623e84b1de53326d042f7b9c6f9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4921/magpie-cli-linux-amd64"
      sha256 "6cd91e771806bd0aa7e608a933ba0dac79da0618e099c804df6a80bacf349c7f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
