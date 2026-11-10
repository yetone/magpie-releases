class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3567/magpie-cli-darwin-arm64"
      sha256 "a9840255784f63b48af17da6c3a7f4481b239ebcbf546540f32aaf6fe6adb991"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3567/magpie-cli-darwin-amd64"
      sha256 "a3b2f966796584f40cfcfd1abc0d7a62757f74a05b9c06bdc27b28c8ef7a55ca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3567/magpie-cli-linux-arm64"
      sha256 "0ff8b30af55248904f2d32eeb4b36058e66c08f4a93e676426699f118a112a64"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3567/magpie-cli-linux-amd64"
      sha256 "c020640b4b1a047509da15df1b6dc630c99a1ba71980c528d3b10cf8d79a1286"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
