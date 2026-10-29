class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2106/magpie-cli-darwin-arm64"
      sha256 "a16111d5cd25623567e1ffcb7f1c5f2713f7439f16705524fa0ab4ebc734d1e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2106/magpie-cli-darwin-amd64"
      sha256 "e57910a17a59cfd8799bedca5721f58a95bec913ce447408eba1c09361731ead"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2106/magpie-cli-linux-arm64"
      sha256 "6bc55544f7e008d334cb847619f55d09c27f69389ce89a96eec100bf2fd27d78"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2106/magpie-cli-linux-amd64"
      sha256 "127feaec96d004ff96fd19e81491703f7e73d36a2cff10be582f01c5987efaf7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
