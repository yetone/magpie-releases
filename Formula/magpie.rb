class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1046/magpie-cli-darwin-arm64"
      sha256 "3e102d41303461d0f921f28c05c0d762c98cddbee8b554a09d11974feccf1a34"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1046/magpie-cli-darwin-amd64"
      sha256 "b248650d05304dd74a0fd50701e0c38d1cb5473be296d8fec625db14d74587ef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1046/magpie-cli-linux-arm64"
      sha256 "799ded7bf5f54df45e3078197bdb397ad6a0d71cb8d101f710af0280b485b1ee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1046/magpie-cli-linux-amd64"
      sha256 "da426c059bff9c4a590d8dcd94e99231ef892d6c9acc400cb504f106761e05c4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
