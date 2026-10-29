class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2112/magpie-cli-darwin-arm64"
      sha256 "8c029cc4dc7a28a310c9b05eaeb1200c47877282e62cde41e2387006b86cea5d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2112/magpie-cli-darwin-amd64"
      sha256 "4a79462df84119963708b2edca1ee50efc880c2397f5fc4d5c7906704aa7b5c3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2112/magpie-cli-linux-arm64"
      sha256 "af1ad08eb8602ba014af91f13440fb364e532563a72aa781b39c4177b7f4bdf8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2112/magpie-cli-linux-amd64"
      sha256 "f4fa5262e9dcbe11f98c24e54a5622ff42b94255802584519939c2bb69024ad6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
