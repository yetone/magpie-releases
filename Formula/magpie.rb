class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2216/magpie-cli-darwin-arm64"
      sha256 "fce43bd3ca27b9edfdadc50d353edaaf2662a5f1044260dc6388e1345ea9f8dc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2216/magpie-cli-darwin-amd64"
      sha256 "018088ddd521fe090b526039f4d135e7d5914a15e67dd55e795a47823498d2c5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2216/magpie-cli-linux-arm64"
      sha256 "9782f449179c0a23a36eb77df74a14092df3b3bf298c90bd1a4b9e5de2ba4e55"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2216/magpie-cli-linux-amd64"
      sha256 "8b991b1b7c39e40343e6a6bf376dcfb0db926218de5df39c8a57183e9f387690"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
