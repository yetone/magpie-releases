class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3738/magpie-cli-darwin-arm64"
      sha256 "26d098626ac81ec2c35aeff17ee1a6248ff0d48447be8e0934d99ff23ca0db44"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3738/magpie-cli-darwin-amd64"
      sha256 "ef3977cf0701324a9561bb408df9dc8126b2464c3abd55cb19c23ff558f5e09d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3738/magpie-cli-linux-arm64"
      sha256 "8cb9944dbade54ed90ffea03407bb3e5512f436c5bfaf5084b161659384ab193"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3738/magpie-cli-linux-amd64"
      sha256 "0ceec61fbe5283b17567a5bc172bffaa4a9c8100aed68622fa135611400d8afe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
