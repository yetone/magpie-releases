class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1898/magpie-cli-darwin-arm64"
      sha256 "19a4233fe176ecdbd9a12e27d89ef04439ff199f2f46d7afa39cde12244976c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1898/magpie-cli-darwin-amd64"
      sha256 "f83c75707dfef3b14375141fb92871b2eadf1b3547c2a28ac696a12ba64d52d6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1898/magpie-cli-linux-arm64"
      sha256 "d7b96178ea0777719a522a412da567f4723c65fe571ba2c26465afd1867b1b71"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1898/magpie-cli-linux-amd64"
      sha256 "a15ed909a9b4a3386d65a8e494ef7195b082ccf0cc842bc878a65453a8ec4549"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
