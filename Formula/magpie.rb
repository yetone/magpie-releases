class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4142/magpie-cli-darwin-arm64"
      sha256 "c7fb15e2061e891cc3828324e390933d46eaab32884f14f27dcf3f187ceaf004"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4142/magpie-cli-darwin-amd64"
      sha256 "c5224fd34d7d74f0789f716ffcf26adbe3ad4e7bbabe2655d863b18878627d82"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4142/magpie-cli-linux-arm64"
      sha256 "951e857e60491e5e704c0c226bf8e5a6e3e05ed0d9c105736deab0b813fe7984"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4142/magpie-cli-linux-amd64"
      sha256 "df18cbb3bf02d8fb75889657452d01b0a918a5afc3c64afa1c033d2075c0f907"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
