class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4801/magpie-cli-darwin-arm64"
      sha256 "d3c67004dc444fc967d51329d3f8864ededd1e8fe25413bdb610c4f86865b5c5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4801/magpie-cli-darwin-amd64"
      sha256 "0245f31427e5f8c413d900ee95d0fb8c62f56e78cb008967dab25011d63c7d6f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4801/magpie-cli-linux-arm64"
      sha256 "d336fbd29617080ec37cf984588a7c004139cd2bfa855f09df2dd26c79bf7565"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4801/magpie-cli-linux-amd64"
      sha256 "7b0ed86228cece8b1f3cb455c2e4b35b54c3522d8fcd9fbb732a5c4f77afe6cb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
