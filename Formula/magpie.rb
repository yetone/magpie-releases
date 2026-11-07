class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3285/magpie-cli-darwin-arm64"
      sha256 "56bfddddc537a9e05d47d687a6ace14ec4813a9c617774eba1b14c358348127e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3285/magpie-cli-darwin-amd64"
      sha256 "67dc9539c572034b3b6c316a4c8bf55276c3cfab9f19dc5b5a4a2bc14ccf3ee1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3285/magpie-cli-linux-arm64"
      sha256 "841d949c9507d016413287e28401d16aef5eea1eb40c1733a92ca7a0a3413519"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3285/magpie-cli-linux-amd64"
      sha256 "99c2dc50390a6e60cede025c722e5657362243a5145eceb96495e1e05a6e5ab7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
