class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4967/magpie-cli-darwin-arm64"
      sha256 "95988a947c4503beb722fdfa886f6ee673aca9538632f6e9e1b1365b98e59b7e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4967/magpie-cli-darwin-amd64"
      sha256 "0e6b70295768015a75293e93fec2cc977920cebec665199c26f9a32e69eeec32"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4967/magpie-cli-linux-arm64"
      sha256 "340fbe04c3269f6a4506673fe5590622a673e631f38663693ccb874687ae1b34"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4967/magpie-cli-linux-amd64"
      sha256 "71a98b75679de5f1e16a899bc0a629c39aba81b0301bfce92acfb117cd7148e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
