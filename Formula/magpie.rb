class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2679/magpie-cli-darwin-arm64"
      sha256 "4e93ebe4abc3bfce2221675e857feae1d272cddc0121197ae13002c726a13d3f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2679/magpie-cli-darwin-amd64"
      sha256 "deb1f35375b2baad0d9fcfbbbc45a1d684fb5c852f587eeb38bb9a77dc4c47d3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2679/magpie-cli-linux-arm64"
      sha256 "b8d5806448bc399d3f8f733fe3b1fa17af63de5717311995ddf51c28fc26eb03"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2679/magpie-cli-linux-amd64"
      sha256 "e6e64bb788e9bed8c49c11c6b7a7dd4942ad98d79c55e9b8255b733133ede4e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
