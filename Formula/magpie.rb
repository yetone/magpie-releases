class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3142/magpie-cli-darwin-arm64"
      sha256 "5ae17ad95a4609a185a7f4464e8fdaaa701f0ea1783b7c1c0d56cd28f4a61729"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3142/magpie-cli-darwin-amd64"
      sha256 "4585df176dbf90ff2191dd6ba3b9b5e2eec889cb6e394031c77a2f6f582fdcfc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3142/magpie-cli-linux-arm64"
      sha256 "7d4a30c8846992226d7a8b241a8b5f2186f42a8d4dd79380f6420c31424d06f0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3142/magpie-cli-linux-amd64"
      sha256 "0895e20d8187bbcc70e12ea25a6975ed6b9ffd6fd2d515e8786e421100171f38"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
