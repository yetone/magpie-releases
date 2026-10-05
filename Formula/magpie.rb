class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.973/magpie-cli-darwin-arm64"
      sha256 "403cea4a84f37898e9d8f4807ab742641d246ae00be677b785e8445cca46318d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.973/magpie-cli-darwin-amd64"
      sha256 "44835af8511361bbedd393f6d33556b87b464c00b2c675a638eebea95d292b9c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.973/magpie-cli-linux-arm64"
      sha256 "94c6b5336a69aa8e297097dc1696edf90c685771ec623de2c6ba6d0453f83cfd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.973/magpie-cli-linux-amd64"
      sha256 "e3a9fc1b9c2a94d92902a75124ba6a0e72e7c2c225033d4134d084bccf852b34"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
