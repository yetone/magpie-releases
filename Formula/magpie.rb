class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2162/magpie-cli-darwin-arm64"
      sha256 "92b025dc19b9a7e0aedf854bc4905ff84c2e34b170a6981215b0ccb761fba562"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2162/magpie-cli-darwin-amd64"
      sha256 "72a4451cfb27a577d9e74debb39e21821de7962d3aa04410381bdf593131f450"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2162/magpie-cli-linux-arm64"
      sha256 "c0bc3c075db75975f8186c8002d64af9dd03a9b119f4601488ee4426e6ad7086"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2162/magpie-cli-linux-amd64"
      sha256 "437bbb8f1577428fa8832255e971aa34bbe99070d6d2e1ad977e20d4468def33"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
