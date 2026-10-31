class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2474/magpie-cli-darwin-arm64"
      sha256 "fe1fda38ab7c6c52bf57a18ac1378f1bf73bb19c36c7e8481e45aea2673a3311"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2474/magpie-cli-darwin-amd64"
      sha256 "9b51240f1dfbbb3f69e77ac8bfa68fe5ce389abc3026d6e86300471cfe37d70d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2474/magpie-cli-linux-arm64"
      sha256 "4c5031bda081a6a8c88427a1686f27b71303d79e359d89f971694c54db6f3b19"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2474/magpie-cli-linux-amd64"
      sha256 "13b372bfbf830fa46926f683adc85fcade25b1f713cec9a5c16470f5bbe4107e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
