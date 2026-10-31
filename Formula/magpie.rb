class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2466/magpie-cli-darwin-arm64"
      sha256 "936a07b1192c365a05f7bbe5d7ac441a9c8d96d0bec88825508100760bc3a936"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2466/magpie-cli-darwin-amd64"
      sha256 "c3538314c7504d03e0062f698238d7c061e5156f0ce0a32868a2cc42f38a32a1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2466/magpie-cli-linux-arm64"
      sha256 "a15354a8048d42f6a4d87490754f01553aed7600016d231123f0f438ee50da70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2466/magpie-cli-linux-amd64"
      sha256 "133fd5de74f70ef88890eab26edfa1721f6b15e46ec40daa44a935f43ed1e2bd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
