class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1037/magpie-cli-darwin-arm64"
      sha256 "04d82eaa15c0d5c6ee8530d7a252ac95666717e983f999ce92ca7c970237f992"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1037/magpie-cli-darwin-amd64"
      sha256 "d3140468bf00ef3df43b1348b42b612e1b76e5dee1f17a6a2b4e5bf22ac59bec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1037/magpie-cli-linux-arm64"
      sha256 "bbca88ab7ead334aa00111e6a8c651377b5cfd0657e0bc0e82542dd23e593f48"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1037/magpie-cli-linux-amd64"
      sha256 "cbc409e443102942a33e9f18c2fab2e11e2c384354532d40163958f2ab895480"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
