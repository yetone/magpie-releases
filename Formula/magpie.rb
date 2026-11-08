class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3331/magpie-cli-darwin-arm64"
      sha256 "576a48900ef44748ef89607e50f2d89bd4bf96c7747de8d03428ca41e0b251c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3331/magpie-cli-darwin-amd64"
      sha256 "716f61d3d76769742aa8e3368f6e168ffa33aa41b3f1456b343524262b467196"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3331/magpie-cli-linux-arm64"
      sha256 "56fbf72eb3d5f9cd186fa0214f3a9e4357724060b80df8e6f825f41fd0d58aa1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3331/magpie-cli-linux-amd64"
      sha256 "f4a4894190bf1cff3fd64f868b2e3a467e689bcd642424199637141ae9fb0f12"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
