class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3135/magpie-cli-darwin-arm64"
      sha256 "c2d7ef6c4e19ab7c9df5d0bdc17644c36229d1f83be16c9588f9bc5709b34c08"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3135/magpie-cli-darwin-amd64"
      sha256 "ac9cd0e8609db4bfabdb052fde1e614a3a006a6f3c5e3a458364a5e450f50c78"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3135/magpie-cli-linux-arm64"
      sha256 "079fad5496f4e49a6f7d40d450d456563fcad2be8e4c2a81d48904fa9427488d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3135/magpie-cli-linux-amd64"
      sha256 "815de52e87feaa07a31bad9d284d8d1e33daedd8df80822a9372056ba6faca5c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
