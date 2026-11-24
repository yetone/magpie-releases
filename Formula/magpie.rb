class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4731/magpie-cli-darwin-arm64"
      sha256 "73f065697cfa6648dc0fc55564924e1a6a4586cac6d6e8734e50aa664df007cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4731/magpie-cli-darwin-amd64"
      sha256 "585f66992543e04199d60548d17b848a1a82cf3fec5d2636db74bb62ec046eb4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4731/magpie-cli-linux-arm64"
      sha256 "1f826b38362a8a0bcbeeded179c6a1eaea91a62594ddca28912532693815eac6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4731/magpie-cli-linux-amd64"
      sha256 "b0d3af5eb3e12864699780ae14629e952b0838f3ece0ded7a2022c7478fac833"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
