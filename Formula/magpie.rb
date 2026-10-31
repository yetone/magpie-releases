class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2306/magpie-cli-darwin-arm64"
      sha256 "044798626e7a8fb14bffc03cb5be055ad1bbaf7a87b3d8f87b933026e468acdd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2306/magpie-cli-darwin-amd64"
      sha256 "cecef2045d9b10153ef26300015415c5521c81ce8222d7a265c483424cff2811"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2306/magpie-cli-linux-arm64"
      sha256 "801cbbbe094f1ad2a71b9dc92e44d03feab7952b380f55d5a0f16e5c1c0921b7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2306/magpie-cli-linux-amd64"
      sha256 "65b1f133de7e2a32fd96e13acbbb0a85728f9907b1a4f548df3775a7efb9b730"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
