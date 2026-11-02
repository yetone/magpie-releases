class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2669/magpie-cli-darwin-arm64"
      sha256 "5c8b507acc698daffbe055ce77a2cb3449d34bf78e4f4a7779f5d2c2b1cf70ab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2669/magpie-cli-darwin-amd64"
      sha256 "ccc10097b55fd26960e7cc73d02bfa96f3d838385634ee0325d20d50a0919d06"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2669/magpie-cli-linux-arm64"
      sha256 "eaaedb8e9119f2a1883701134ec03a41bc4a45173cf6e6cab54b7813f5d3da78"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2669/magpie-cli-linux-amd64"
      sha256 "9edc94faa29d213dc30ff110004b65cdab2f7fca46441df1509dae2a3c6a72c6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
