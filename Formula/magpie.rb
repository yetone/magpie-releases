class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2307/magpie-cli-darwin-arm64"
      sha256 "f75b53c85ee1975c018ce3f5193362d2de70cbcac3cbcd52efb871112195f1db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2307/magpie-cli-darwin-amd64"
      sha256 "94fd534155ab3fbd6915c15d08baff48b3dfd9f2337ea772c7fef542b3a2970c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2307/magpie-cli-linux-arm64"
      sha256 "764799d2675efc973225737e12d9c26b618eb8754f0908a9df8cd35546141f6c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2307/magpie-cli-linux-amd64"
      sha256 "f116f00757fa1aa89f01f754c4d2ae33c3f7660ee05a7de82941977d8ae3021b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
