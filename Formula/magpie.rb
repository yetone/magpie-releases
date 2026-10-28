class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1928/magpie-cli-darwin-arm64"
      sha256 "2c60c08dd21cf4bde3e48086e13018510aaf5d05b09585ea3e41e3fe2a4a665b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1928/magpie-cli-darwin-amd64"
      sha256 "2d83ad130fc241a94188665b592dd5480f79f0e266ec94a1c53ead20572cdf2e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1928/magpie-cli-linux-arm64"
      sha256 "539e3eb782b7df6699affdaed526f12ec433f6506663b85f11285cbb001dbcfa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1928/magpie-cli-linux-amd64"
      sha256 "5aebf4de01a658a9f062ebf7f4195e9cfa19062bdab2da696a25891c3ad896d0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
