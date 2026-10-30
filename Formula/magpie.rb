class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2192/magpie-cli-darwin-arm64"
      sha256 "a8836647527f1c1841e12883b707a63e42e3729a57fb3a90ea6d94999c5f4101"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2192/magpie-cli-darwin-amd64"
      sha256 "35de3518b2df903ec42638a34ad4b9e50eb7834755d48be8588d5170a5c59897"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2192/magpie-cli-linux-arm64"
      sha256 "75928301c713679bb123bf2ab7cc86e426e85f7b5595060e2a84bc1c30976b41"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2192/magpie-cli-linux-amd64"
      sha256 "be4a665086e80e801f2f4d9dc88c30ed426ff390a07a1ef8ce0fdb65b34cf8ce"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
