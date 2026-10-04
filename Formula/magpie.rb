class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.892/magpie-cli-darwin-arm64"
      sha256 "3cdf0eed726b4faf5865e8475d13ab51c9b169aced71ce9ef5dc17ee284a5032"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.892/magpie-cli-darwin-amd64"
      sha256 "5701d50dadfa8e8e659cf929e033fe274a168ce5f1e3f0b42b7736fcc67f7da9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.892/magpie-cli-linux-arm64"
      sha256 "53752f47634ecb2c90e46d8a889a9521ea0a1a4ade921789d88975f9cab3f929"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.892/magpie-cli-linux-amd64"
      sha256 "c052e6fec53bdf8eab6e3f8b834ccefd0bd60c6f92fd95aa56dc9652d4cff9f1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
