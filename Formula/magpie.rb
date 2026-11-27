class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4958/magpie-cli-darwin-arm64"
      sha256 "8d95c7f9309070e92b6c9ba7cccea2d0f25e4480b3ab4fde68f14e124489285e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4958/magpie-cli-darwin-amd64"
      sha256 "9d6f0153ea07cdac557a22aadcacaa476e225eedba1a24068ab01d10993afacc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4958/magpie-cli-linux-arm64"
      sha256 "a4161494ff589c18c4bb7b6581986eb361070aec7aec5d63e79284b87df6b0c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4958/magpie-cli-linux-amd64"
      sha256 "2b5be8b6718d07ebf1c01abbdf69bf494f459c236bef0a599f8d6967d0c88785"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
