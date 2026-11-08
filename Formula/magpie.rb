class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3328/magpie-cli-darwin-arm64"
      sha256 "8a20dd675ceea988bba81aa4e1ae7ddd03c931d5fdaafe8f5373b3fc31557496"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3328/magpie-cli-darwin-amd64"
      sha256 "f1eb3481bdb5bfdadd842d75ae372b8e337d870febd21f9c8bf855ac7e44e41f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3328/magpie-cli-linux-arm64"
      sha256 "3d4d5db1a43868670c672f6cd1b305fa76dea22e1327e99dbf5904793a2966a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3328/magpie-cli-linux-amd64"
      sha256 "c9fba15a7b4bdb0ae00623b635db890ae68abf6080415fd4f742905ec3c6095f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
