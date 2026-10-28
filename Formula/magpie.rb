class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1917/magpie-cli-darwin-arm64"
      sha256 "7842937107b1fec35615331330423e1d7c19297e5850845d2f1c2db87468b628"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1917/magpie-cli-darwin-amd64"
      sha256 "8001b9801fa888de5234188c3b74be9bb22758f21459cbf61821fd332d454888"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1917/magpie-cli-linux-arm64"
      sha256 "bb8e8f82c27fa175d1b6713b5af2df06bc415b6fb0783c82e001690c484397a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1917/magpie-cli-linux-amd64"
      sha256 "a83c72f1061b2091fd67120c6bd0f9ca5cffe0f681f7fc9c593a4ee13e4c1b15"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
