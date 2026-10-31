class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2361/magpie-cli-darwin-arm64"
      sha256 "9c27c31f0289a9ab205dcc10abb3a86f6a827e60d3113a24aa294033c9e5f10d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2361/magpie-cli-darwin-amd64"
      sha256 "705d4bbd3301b5c8a04073f0ad38f247fdd7c18563021264eedd7326e78d0322"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2361/magpie-cli-linux-arm64"
      sha256 "c3fea323bc893f7d3af911c671b72274378f708e3723b67eed61ce8c0055bf6e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2361/magpie-cli-linux-amd64"
      sha256 "ddcc5ddbade4e6dc2da61edd0b287abed6fe1cee021150c5dbc91f0c2eb6f9eb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
