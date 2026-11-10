class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3645/magpie-cli-darwin-arm64"
      sha256 "2f5f5bf9d81d4d6d9340bd4eff32f40d19bbd0982d6c0ebb2bc4c45dd38226ad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3645/magpie-cli-darwin-amd64"
      sha256 "9bf2ec5609ec580f060eb1ed60bc558a1f1c464d929bfeaeff227fdb9482b244"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3645/magpie-cli-linux-arm64"
      sha256 "3ec06d9d6feab9054f304ad41caac56a7d0b7b6cec14bef900635f59ac9978a4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3645/magpie-cli-linux-amd64"
      sha256 "795851ffc2a7a6bcb6193bd56a813390e25ed1264b82a283af2dc944f444b813"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
