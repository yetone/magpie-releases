class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2845/magpie-cli-darwin-arm64"
      sha256 "5374e50812668a2a7c9a06e69fb56ab8b047d409e7e3a45b8579681fe136f776"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2845/magpie-cli-darwin-amd64"
      sha256 "17cc761a4c3d35eb8ad5bd493297bd034f5f65543947bdcf99c43740f5273ea0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2845/magpie-cli-linux-arm64"
      sha256 "91b1e831f02b16ca964dabc9ab74b984f8ab771061ed182f24b5e02dbac62da2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2845/magpie-cli-linux-amd64"
      sha256 "e48dfae1e5b87eab369193b283523ec4d64e0cccc1ba2b3de0f59654c0de8f30"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
