class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1023/magpie-cli-darwin-arm64"
      sha256 "adffe1e7a61a57596d43e0c2bc753161236fb95902107da40020226078264b23"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1023/magpie-cli-darwin-amd64"
      sha256 "40d77e04ab26bd98d39654c939d08c315ba0eb518833ae4fec36d5d1a55b0625"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1023/magpie-cli-linux-arm64"
      sha256 "4aeb2580b11802c2c07f06f5f35fc2f65666a801d494086cb8e06f9dd4f294f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1023/magpie-cli-linux-amd64"
      sha256 "bc3453f49d33709edd2032d1bb65d177d710d1744527d7b6158dc8305e4b5f10"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
