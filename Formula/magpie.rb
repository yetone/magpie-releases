class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2775/magpie-cli-darwin-arm64"
      sha256 "5d1edd5fca40726b5991524ccaddbe56fc67d099921fea4de8d14606adc912f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2775/magpie-cli-darwin-amd64"
      sha256 "2ee9503897462b6828a44b8bd7c381424fb7065a4879472b0cadcc20c800eeec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2775/magpie-cli-linux-arm64"
      sha256 "e2a4dd4f2519a344fe5d4de869168679b5ba3f97ee07e7c2599a794de04f23a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2775/magpie-cli-linux-amd64"
      sha256 "e35bbe77a99b19bbde75f02903374df49bcab4d9b41e59831aa32ca18988e714"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
