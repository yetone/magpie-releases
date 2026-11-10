class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3610/magpie-cli-darwin-arm64"
      sha256 "a3103038fe98b72e567398e3a9f309610e10f200a352c679f3440181e46e75c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3610/magpie-cli-darwin-amd64"
      sha256 "ddb7f329d264cc4cde1f825b009ffc404a7ef9525749c23c00d42c30ab2f58f4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3610/magpie-cli-linux-arm64"
      sha256 "7c4df34bf3fc1b48a3c21aab477d75ac3bff2daa13e95fa46341c54a0c40028d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3610/magpie-cli-linux-amd64"
      sha256 "14fea1bbe0b042ce1621f822956d83fc68b381a193e0477daa8075b0cfea9d40"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
