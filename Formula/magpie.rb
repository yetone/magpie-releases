class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5037/magpie-cli-darwin-arm64"
      sha256 "f4bf938d4dfdd1e49bd09557d40712187900491643b589c869b08f061b1b1bde"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5037/magpie-cli-darwin-amd64"
      sha256 "a0db9dd554d37fe521bbea1cc5aa3a5798121acf3e4d2994ccd170f68e7a93e2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5037/magpie-cli-linux-arm64"
      sha256 "9f9b265460bd5bb923bfc34dd4517475cf8dc726ad93c1b5bdba7b1207be140e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5037/magpie-cli-linux-amd64"
      sha256 "ad67a5ab6b6bd23cc42e4a73a01db4e00e444d6bb537aca4cd98520746fcad0a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
