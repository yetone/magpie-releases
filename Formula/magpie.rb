class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3953/magpie-cli-darwin-arm64"
      sha256 "8601ec53b4de37e2afda7cfe36bb13bf74d044db9602d65c5b618853f0bd6733"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3953/magpie-cli-darwin-amd64"
      sha256 "0ca7fab8ccdec1fb7a3579c67ccecf95dc2dc503b4db878655a6f6abcfa0310c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3953/magpie-cli-linux-arm64"
      sha256 "b637b1cc7c7406c629bc91b6256fedcb4cc956d8b6df32460bb9e6e954fc518e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3953/magpie-cli-linux-amd64"
      sha256 "56ba7eb1b46ff16c2b1e5cfc72fc7a927366c6ddb60341f4b1331a650b45aa76"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
