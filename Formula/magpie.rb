class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4771/magpie-cli-darwin-arm64"
      sha256 "09e616d23318b201821e14652c501d9ee5f834bde26cd2f955b3b89edd0d11fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4771/magpie-cli-darwin-amd64"
      sha256 "1c5ccc0d7b546a3f9e3dc38d6425632188c8af142421e3a6f55bc65b68a4d219"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4771/magpie-cli-linux-arm64"
      sha256 "a29ddba8857fabc7970af79a8d96937c1d594855bbadf573adf9f182987a7462"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4771/magpie-cli-linux-amd64"
      sha256 "e972249bf5f16c28c9075d73fe75f50e659c196fbadf3b6ef4027cb509df6b9b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
