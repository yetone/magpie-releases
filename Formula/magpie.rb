class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3759/magpie-cli-darwin-arm64"
      sha256 "aaf675c41ff41b63f5194be2942b1f699d6ecbf9ae13e45dc7f074ec3a873214"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3759/magpie-cli-darwin-amd64"
      sha256 "47b81ea6b4c70e586cdf0c3aed688fceb647a62dcd7f3aa55261b5e2de0f1bbf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3759/magpie-cli-linux-arm64"
      sha256 "743168fb83448a0871dc3eb3364d32b3184cfa6bc638651b1e9ff91c59a11035"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3759/magpie-cli-linux-amd64"
      sha256 "8a51d309af7f128d313e961999529304de8aecf8eb2d8ba3e02cffcd7fb2b4f6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
