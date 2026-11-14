class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4134/magpie-cli-darwin-arm64"
      sha256 "88aa57bca2d639f8f8d7cf27ea4f9e0cd477839423575c73fecadf2b28c2d7ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4134/magpie-cli-darwin-amd64"
      sha256 "e001bf411f92034dcb854ed3adbe5440dd35d47bdcf666e4ad59ed5d8c0d2daf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4134/magpie-cli-linux-arm64"
      sha256 "4029fcf12dce32c84bc25dd66730b131380d19840fb7db8e2611ced6f6ee1a6a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4134/magpie-cli-linux-amd64"
      sha256 "f45fca579902f62f107b351425b41aa954c8b523c7c89d375e9082cfdfdb8949"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
