class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.906/magpie-cli-darwin-arm64"
      sha256 "287a068466b72702297f7b26cd1e240a665260f276bef94a628ded6a13a6daf0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.906/magpie-cli-darwin-amd64"
      sha256 "916b38d3f88e78311c35bf4a208007bd8ef4540bc9dff827b50de43791ce1491"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.906/magpie-cli-linux-arm64"
      sha256 "7b3b4ae271b30a25c410171f045bda378161c0dc8f2c497d0e658f1fbb4356c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.906/magpie-cli-linux-amd64"
      sha256 "ebaa062eb37073c540ec12e23ff2e5ce9be2ba97159726af3ab9a36f4c14609f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
