class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2469/magpie-cli-darwin-arm64"
      sha256 "f19182e5f38b477e15fef98024ae488a229850af62492710105894ac33abc74c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2469/magpie-cli-darwin-amd64"
      sha256 "f9ff86064720acaea002b01d39b2fab5ac6183216ffe8facc25740c69e837d14"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2469/magpie-cli-linux-arm64"
      sha256 "124585946e069d16dc465a3cc0a0e15d45b54c6939d05d2e26bd28564422fa37"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2469/magpie-cli-linux-amd64"
      sha256 "73824361ed6b2121893167def8eb1380a36bdd1f4335a808e8bc3f7be5b11a6f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
