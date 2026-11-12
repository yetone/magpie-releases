class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3921/magpie-cli-darwin-arm64"
      sha256 "2d79a3689bc6f44e0d53e066cca5b55b1c7238c12660c4b3b1a884f4583ccfbc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3921/magpie-cli-darwin-amd64"
      sha256 "8bc9628dece4aac4f0590099d15fc035ef7e06a0099563976f1daddd4abe22d3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3921/magpie-cli-linux-arm64"
      sha256 "73ee8eeeb79bfad61ad7653282457058b7d9a896bc9441457d016b1f3d5ac30e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3921/magpie-cli-linux-amd64"
      sha256 "e318a3ca690dc752b5d8f27e0c88f2900308c8d6290b7141cdc7579fb660eec5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
