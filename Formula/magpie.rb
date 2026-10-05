class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1002/magpie-cli-darwin-arm64"
      sha256 "4f44a92b4d965e23cc783583d5e420fd8d6c3e34ca39c45cfeba4b9fb3a36058"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1002/magpie-cli-darwin-amd64"
      sha256 "9f3fe069b1c1a8fb37d2c72b671ae854cd71fbcf104f6b92a55a673ce84bcca0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1002/magpie-cli-linux-arm64"
      sha256 "3c30fcd1c3b0f85611108f20089abf6bd1d31772e2d4ee1701f259ee80466f77"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1002/magpie-cli-linux-amd64"
      sha256 "c285817e61d1df015d2872573d330322bdd7e6b31cdcecbbc5d9593069483f65"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
