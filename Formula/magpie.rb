class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.907/magpie-cli-darwin-arm64"
      sha256 "1fb0ab430880c67a2cb7b867b0df0771ef6ab3077e1839c3821c83cd9e47674c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.907/magpie-cli-darwin-amd64"
      sha256 "52fb872e12c1632005b98c02999c7c3e79cd2e9d3a141ed666ee37e2235e219d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.907/magpie-cli-linux-arm64"
      sha256 "e3fce763a8ca975fc5106766705f655ce8ed04dff8fc5794425d27bc93924419"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.907/magpie-cli-linux-amd64"
      sha256 "5e08f64d0bf24a74b8590e21db491892e26a6598fe93863ee092e8f4362dbc07"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
