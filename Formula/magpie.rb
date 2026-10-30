class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2150/magpie-cli-darwin-arm64"
      sha256 "c1193b4482d7d9bf1a591d083573e18aa1cdc40f04c45ab4ccb74200ce79b093"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2150/magpie-cli-darwin-amd64"
      sha256 "14f69ad8b9b639b130395f81e571c59dde2448b433b412ef3c7db5c2ff597c97"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2150/magpie-cli-linux-arm64"
      sha256 "fce17f4fa151485d0eeaf8394db6c6ad98943f64452d11cd549abb47ec4ff207"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2150/magpie-cli-linux-amd64"
      sha256 "01e382640e892b61bfd05eb595db55c752ccc781d130937e4dc3c1962c26c136"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
