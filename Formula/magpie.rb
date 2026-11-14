class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4108/magpie-cli-darwin-arm64"
      sha256 "63db7f3a8a0456258947b570624c4e0de3cc94d91cc3d22a2a462109564703b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4108/magpie-cli-darwin-amd64"
      sha256 "96cf05344727ff3259837a756baae421e87eaec43d119f9681880aa1cbc83038"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4108/magpie-cli-linux-arm64"
      sha256 "ffef3e6069158be8990e0660b2c7dc7bf491716cab7e3b0720eae62196050edc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4108/magpie-cli-linux-amd64"
      sha256 "2b675b91055c6f9212dd421c2b12761f890fa6a9cd2b43f5f6ee00bbd7f3971a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
