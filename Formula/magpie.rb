class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4890/magpie-cli-darwin-arm64"
      sha256 "ff3291267d7c047fce724aff9172d487209e7cd0fcc97e305978e645a51c6aac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4890/magpie-cli-darwin-amd64"
      sha256 "e56546985a1885112ef70ff506b06a653097e4f97f2f2e730ca0cad31d13e604"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4890/magpie-cli-linux-arm64"
      sha256 "47f1c7d10ea118c0dcdd3a7489cce822afb7a22e315f20636a6fefb4bdeedbc2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4890/magpie-cli-linux-amd64"
      sha256 "a02f2ec81e319ce1aaecf9b80d4e985b6ad6858f2f96f9084af5565007715052"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
