class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3948/magpie-cli-darwin-arm64"
      sha256 "b910c410493d197e47012be578117bf663fbb2bf6fcac2b3bc72ef944d04cc22"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3948/magpie-cli-darwin-amd64"
      sha256 "52703620b10aef1c56e835385036ece210a8a6c5dd2ec5b6bdbb695e14429c37"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3948/magpie-cli-linux-arm64"
      sha256 "53ba689754143217205ab8781f6a9727bbcd35899d3837b7e4e77cfe798f3d7e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3948/magpie-cli-linux-amd64"
      sha256 "148c8121787afca95072cfd73360195bc77706ea3ab4143fa9945a8c7641fb17"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
