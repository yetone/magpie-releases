class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3453/magpie-cli-darwin-arm64"
      sha256 "079d1c9bdff5893aedbd808f5055190a222d90f69bc9feba7ab429eced42e8ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3453/magpie-cli-darwin-amd64"
      sha256 "313e2de51aaf477a9104d66e3537f97a37ff9ce3f8cf1f37734e6fd700bc7feb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3453/magpie-cli-linux-arm64"
      sha256 "c95fc83cd894e4745fd6a178670e8c31d85b4d94e9b96f502e0da9334efef022"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3453/magpie-cli-linux-amd64"
      sha256 "0ac8b03ca0acefecb4c4c86ef1e783b50b20a4d3b61d9d31e996d75203d76744"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
