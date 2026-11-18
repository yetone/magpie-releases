class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4483/magpie-cli-darwin-arm64"
      sha256 "d98e34a07f68509ab76413a9b0f7f74f4fc3ac3b9ee0148a376ce9106555aa42"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4483/magpie-cli-darwin-amd64"
      sha256 "218aea54a1a0d5fe07e5e2d4cc5b41b194bb30f8ff9a86a8d35cae519fb826b9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4483/magpie-cli-linux-arm64"
      sha256 "8158a17e97c892b7df699a7a50b7f4fdad00eba075d256d27fa5ce4b83fe5ef4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4483/magpie-cli-linux-amd64"
      sha256 "cc86949eb8bc894f19fe0a780ed5ecc9df95a37456a9b7335dcd9d412ea8e52c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
