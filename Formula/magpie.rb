class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3089/magpie-cli-darwin-arm64"
      sha256 "3b39b32be1ab785a40b9ef915b3c40435e51ba4a3b7179a0bebe5219692875cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3089/magpie-cli-darwin-amd64"
      sha256 "0aa237db8941bf9107cd5ad0e05f9e9eabff29b72f90f4b1748ea48b60633b36"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3089/magpie-cli-linux-arm64"
      sha256 "4742fdd026c6130de50efea68a475b5ac9415b4228708a352d799ea4ad025622"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3089/magpie-cli-linux-amd64"
      sha256 "71f808f3ddc75764fc6a94ef47a28ca76de28f90b00e800239f13bafea4fa3f5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
