class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4942/magpie-cli-darwin-arm64"
      sha256 "a9b5e9ece4bf1e5980df5a982fc82d8079a5056e51492ab3255b9b5cffce3c4c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4942/magpie-cli-darwin-amd64"
      sha256 "1afdbd1238156f7907cd4467146a660cee996c62d1847a9b7ed636596ee47174"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4942/magpie-cli-linux-arm64"
      sha256 "b6b378a39304e871555776dea03eb21903124bc64925e8e4bbcdad663dd3efc8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4942/magpie-cli-linux-amd64"
      sha256 "4cb2694f72b563c859476133786a4979b8caa9757292bcfc32b46dd219498dab"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
