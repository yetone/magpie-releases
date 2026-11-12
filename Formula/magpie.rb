class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3833/magpie-cli-darwin-arm64"
      sha256 "6e87f075f0641c02bd423bdec62036c21ac5e8f41d67ceb372df35340066d056"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3833/magpie-cli-darwin-amd64"
      sha256 "f11ca016d9e34e8e811cabadbe81e0ed23c3cefec07523f9d9f341d1bed79a28"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3833/magpie-cli-linux-arm64"
      sha256 "1cda4a5be2b0a4eb04dd377bc5eec17c87e93a2be0b9bb80ba0527e9d9ac2d25"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3833/magpie-cli-linux-amd64"
      sha256 "e48ff7854fe85f687b30578746dfdf32854df85f9174b0375c71bf2c8714c725"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
