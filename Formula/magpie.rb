class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2129/magpie-cli-darwin-arm64"
      sha256 "9a956bad08298e7ddbf0209d8e41cf3d71a6b3b6f95ca05d733b7b561a62b50f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2129/magpie-cli-darwin-amd64"
      sha256 "34eb4ed07f76de6457561bf3361eb1dd3b7c7235f75f6dd8b968d7b8c0f4088b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2129/magpie-cli-linux-arm64"
      sha256 "7bad6afec624416f33638155abf8b125a8523107ddeaedc6d5ead75fbf5bd452"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2129/magpie-cli-linux-amd64"
      sha256 "19fb672b018863d6235b96525e683ca910385cb5d134437442b494f10444f3ff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
