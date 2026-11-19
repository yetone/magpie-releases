class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4562/magpie-cli-darwin-arm64"
      sha256 "5005873c570b39f88a450b3423b702b9b96162092e7fb82f245183a8ac3645dc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4562/magpie-cli-darwin-amd64"
      sha256 "bbdc5124f535bbb01a220412bb666937f7f16becda745fe4eac09886f37de772"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4562/magpie-cli-linux-arm64"
      sha256 "96297d812f9039d84e1f204596aa5b1dec9f1bcab1138f66635f0288905860ca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4562/magpie-cli-linux-amd64"
      sha256 "8a797f65424761c7fb4f30080fc6862994ad03b911017fa9c0b0c2bdb5c9e8ec"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
