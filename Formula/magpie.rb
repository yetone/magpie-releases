class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2388/magpie-cli-darwin-arm64"
      sha256 "80bc881afd389a4a69d0a4c01fd106d72e6d088dafa61def887c9eca87d33680"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2388/magpie-cli-darwin-amd64"
      sha256 "e42aa887a99d475efc88e59877b3601cdaa90cc5c02ee2a6559db89ceec253ff"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2388/magpie-cli-linux-arm64"
      sha256 "4bda5c25437298d3b4ea1896c55229ca7e7c2acc476451a2ab42f3f2bd25a9ad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2388/magpie-cli-linux-amd64"
      sha256 "0e84b76423f4d7d089ff479b0b366d1c7e644453be7fc5dc546673e48d582f45"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
