class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4899/magpie-cli-darwin-arm64"
      sha256 "b8ef0f9d4678dc589698d2fa95db61696d58d6ad848df9c28f083cc2a9b400b4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4899/magpie-cli-darwin-amd64"
      sha256 "0e7d29eece9076918cf2d7f0d3506a70c66590e4dd5e89f78c92467fc5decea7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4899/magpie-cli-linux-arm64"
      sha256 "a203d3da71ec3a75c1501824eda990f5e5dfcbd862f27a3053f23070dd9b7031"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4899/magpie-cli-linux-amd64"
      sha256 "f6a2e40451a2be5b43efd795eda533a87b9c1bb4a0b7cd254382159de9eb116b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
