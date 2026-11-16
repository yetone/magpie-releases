class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4339/magpie-cli-darwin-arm64"
      sha256 "12c293a21961cc9d955e2aecb341edd64ecb34fe2b135c7700bc4c2bcc5c58c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4339/magpie-cli-darwin-amd64"
      sha256 "97bf54eb6beb16c05b8dac02e8a0c37e35403a0a54b611674e436b223503c56a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4339/magpie-cli-linux-arm64"
      sha256 "d11d2966c2e7a927728f80a58f9ee8603db4271003bd01a1bd3a43d39259f4e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4339/magpie-cli-linux-amd64"
      sha256 "c418908ac6712310a283695c8a00d8ec21af24973795d608cc2986644fcf64f3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
