class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.931/magpie-cli-darwin-arm64"
      sha256 "4163d5f848a6d5d6937362564e8b7e3798e8278f682a44d9b7d037a308774832"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.931/magpie-cli-darwin-amd64"
      sha256 "eccfce8d1e21b766a90cf688f67e27861c23957de8a6da1e960fe0c0cebd4827"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.931/magpie-cli-linux-arm64"
      sha256 "2f011f69f8709c4ac9d20fd8a39bfba67fe59833618c51b5c0936b03af5f4f41"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.931/magpie-cli-linux-amd64"
      sha256 "3b072922593d3ba49610e884bbe8ca309cdc98948f514222f8c5a6bab30b492f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
