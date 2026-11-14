class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4201/magpie-cli-darwin-arm64"
      sha256 "1ebd1e56079e9672954bdc5dd44077d1af8e08876c344c1f8fb8efd34b224015"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4201/magpie-cli-darwin-amd64"
      sha256 "f88670283d0916ee94e01afe85d4d443a78f683b605448f2af65057a4e603e93"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4201/magpie-cli-linux-arm64"
      sha256 "e1c99b32f9e62d3b4ab3683ff9369ec0cc3d6fb63517e9f8b51b23bf18dd39c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4201/magpie-cli-linux-amd64"
      sha256 "128c34b5c73d617eb666f6ad46b36be643ed6f9cffac2e96d005546369d86004"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
