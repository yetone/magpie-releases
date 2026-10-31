class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2349/magpie-cli-darwin-arm64"
      sha256 "951afe565fb8a0a7b785479a5db36c6287f746cb1923760e1f459a16cd2cbb05"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2349/magpie-cli-darwin-amd64"
      sha256 "8e5c206cc5c92dca5cbb9f1aaa92a198479efaa73684b9bcb52a506d4702eec3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2349/magpie-cli-linux-arm64"
      sha256 "b20b08adcdfc7ac3cea0667c0af442b13e3984af2399771fe2ed76d14919c00c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2349/magpie-cli-linux-amd64"
      sha256 "d391042edf17cdb97fb75b865b0ca1af53a22c8fa1a6ec506a1872cd9316fbb3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
