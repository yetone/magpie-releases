class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4392/magpie-cli-darwin-arm64"
      sha256 "656387130b9b2e28ad05cda5ec2e9166c17a99effdfc7f9fb9526b5a6d2db995"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4392/magpie-cli-darwin-amd64"
      sha256 "edca9ffa6f0d6bd804b1a19b91a2a08e2d94d6606b46933a3e4786501cda1f70"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4392/magpie-cli-linux-arm64"
      sha256 "a0e37245636e6abb8aab37b65d97fd829b32ed635ef3e7f840dcba6312011b76"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4392/magpie-cli-linux-amd64"
      sha256 "497e3fe9c4a37e28a25b65586747e879091d343b6c07cfd09291ea3bb2c4f180"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
