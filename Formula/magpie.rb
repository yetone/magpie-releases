class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2562/magpie-cli-darwin-arm64"
      sha256 "83e40bdca9ad89bab162bb83bb0e3697a9badf27f75f309cba3f9791203d24e4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2562/magpie-cli-darwin-amd64"
      sha256 "75e7c394254209ef78d8cf95bf07d2c47640dd8ca82ee71da7e96c35c385f8a3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2562/magpie-cli-linux-arm64"
      sha256 "00d92ecfbdb8912468f895b9ba2b0bf76136531de9643976fa5658937dd71430"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2562/magpie-cli-linux-amd64"
      sha256 "ce9086f0970edd3b4bfcf798834a42485d34d79857c81be914b8a6a0a85cb33f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
