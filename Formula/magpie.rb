class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.146/magpie-cli-darwin-arm64"
      sha256 "ae327cae971575b55e0a33ec3f528507dae5d7aa86955dacb8a3a346b133fe7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.146/magpie-cli-darwin-amd64"
      sha256 "903f4b1122cdfc0b189cafc0504efeea2c7da0921f4616514f5707ecae975c4e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.146/magpie-cli-linux-arm64"
      sha256 "815d8a2d44006d5a8efaef3e039bfc6ac4e8dbd74750c18307687827acf7ab27"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.146/magpie-cli-linux-amd64"
      sha256 "b5c21d9672f25f85becc473168373336986fd531f5c4b542583ef4aa235508db"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
