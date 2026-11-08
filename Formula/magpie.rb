class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3345/magpie-cli-darwin-arm64"
      sha256 "97384d2afa3791a284ef3dc4e666a6368219fc6d2d727d327b4a92bf54daf829"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3345/magpie-cli-darwin-amd64"
      sha256 "81d5540f50068015f37065e7dcde3c9cba4c1fba3edbd7ac65b36358301f4668"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3345/magpie-cli-linux-arm64"
      sha256 "8bb31b18db995af9cf35e4923782a9359b4f7d0b443e774ae1b01ef3494f6234"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3345/magpie-cli-linux-amd64"
      sha256 "ff33033af5ce8e1334ab51b8e7b08f2073e3816f4a600f86a924a5bbc324dc02"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
