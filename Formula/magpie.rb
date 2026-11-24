class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4762/magpie-cli-darwin-arm64"
      sha256 "052fee80be12a6f305cee4f531ab6d667d5316e4b113b68cde597f8dd58b90ff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4762/magpie-cli-darwin-amd64"
      sha256 "2c59dadb930dc0ff5985ba866e377a924a7a9111c4231ab968e79eb5a00b7228"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4762/magpie-cli-linux-arm64"
      sha256 "bbe0f93dcdc6d647e64e829726779cde0b51ff50d0fc387281d927424ec112e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4762/magpie-cli-linux-amd64"
      sha256 "8bd2f822015a051c3d569370be5c2665db89baa4e4b2d0822d9cc623062bec02"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
