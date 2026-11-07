class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3262/magpie-cli-darwin-arm64"
      sha256 "0da071dfb3cec31ddb201fc427cac0caadebd582b15bebdc6813f6869b3957c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3262/magpie-cli-darwin-amd64"
      sha256 "30224156d3e41ffbd6021c221e98399525643887c5a94c29c1d0a6631ee5182d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3262/magpie-cli-linux-arm64"
      sha256 "a2ddf8da35ab7c9dbc37c8522dcbb6ceece326994b093c9988f3d73930874c5d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3262/magpie-cli-linux-amd64"
      sha256 "91e9fb2fc272ac5f5afd3a7a7531e0fcd6448868c4ee09ab4b254eeec64166fd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
