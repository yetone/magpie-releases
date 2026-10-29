class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2092/magpie-cli-darwin-arm64"
      sha256 "293421f59270537c5626dde29f0ba6d079c8f3aa6086ac01e61a43e41f9afb0b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2092/magpie-cli-darwin-amd64"
      sha256 "dc02c5372e2e76a0a0f08f63944f4a3dc74b39d1a6fbe91b3735ced80e9acfa8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2092/magpie-cli-linux-arm64"
      sha256 "de6962bcb065927bf14519ed69459918fa831c356a8f02eec3d79d0605cf0332"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2092/magpie-cli-linux-amd64"
      sha256 "2d833aeab5cfeb420e8ba5b9ae7211ea3632582d9a9d74238fc371990d82c593"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
