class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4569/magpie-cli-darwin-arm64"
      sha256 "cd11df2693c616eac4f55e0e91d42c56b09788b6634f072c02d421c8d3cdf121"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4569/magpie-cli-darwin-amd64"
      sha256 "3524ced1a2444a518d8d744612cf121ee2801af9d6576d9831af085127554a92"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4569/magpie-cli-linux-arm64"
      sha256 "72d4824517a75d065911eedc21d7000b8114351c64482917682a4f44e8c22029"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4569/magpie-cli-linux-amd64"
      sha256 "0b6a9593658fbfb593aa85e6a4e917a2d46528492e2102d94f64a2f434c55de4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
