class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4408/magpie-cli-darwin-arm64"
      sha256 "e38e001852d359f9d846f2ed36e9a38ddda63f11f7682b136ce6681d39be750d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4408/magpie-cli-darwin-amd64"
      sha256 "283bcdc6d427789c1825af46e6bc40793db9a7ff3465944797d86ff283020a3b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4408/magpie-cli-linux-arm64"
      sha256 "a0453105885b7f6e40005c078cbb62c2547d05a4a0dc1e6fc5320079333d2c35"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4408/magpie-cli-linux-amd64"
      sha256 "a30863abf9fb7695c5f9e8467a38ceaabcd1828a14e472d9f179e24eea09d66d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
