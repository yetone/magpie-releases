class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4059/magpie-cli-darwin-arm64"
      sha256 "625c6d7e59dca83506d55da7f009be94b39ddfc9bf943b692220e73f85d67619"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4059/magpie-cli-darwin-amd64"
      sha256 "0585aec5bbc61e0d37677c0456c575fafb9d74fcb9f1e53cc0ea0b14b5f3f0d1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4059/magpie-cli-linux-arm64"
      sha256 "3916fb80992bdac94434cbd7ce8721d55657258505609cc6ef55e2be52fa2d71"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4059/magpie-cli-linux-amd64"
      sha256 "14dcfffaf9ba1e792aced90a439e3037efc318a969b20d7c184a59f2fa4997d3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
