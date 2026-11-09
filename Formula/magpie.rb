class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3462/magpie-cli-darwin-arm64"
      sha256 "f3d3e8db3748ea59426da191043e83648d8a81a9c5f521478a1dc7f1e1cef110"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3462/magpie-cli-darwin-amd64"
      sha256 "800e814fee3cabecfea7d3001d18d9e588c03e7f34992af2c1e5583734971a7a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3462/magpie-cli-linux-arm64"
      sha256 "41c90285ad2855be116b9b4c5d936e588fde6f22046347525d29f7285c60280d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3462/magpie-cli-linux-amd64"
      sha256 "936373b947ebc5a5014222b9ceb0d806cfd72cbcccf5284fcc6034fef4c475c6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
