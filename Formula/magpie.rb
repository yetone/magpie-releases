class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3834/magpie-cli-darwin-arm64"
      sha256 "4f94d628692e8de5d989b33c888809541157c123e642272ddc66825cdb333344"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3834/magpie-cli-darwin-amd64"
      sha256 "6f55348e5928268382b9179007776a851ff5c4be97ed78c73b3a58a6411670d8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3834/magpie-cli-linux-arm64"
      sha256 "cb09e6610081ce15ecd12c93dd69a37fec56691a247ad09514ea440c75ac2094"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3834/magpie-cli-linux-amd64"
      sha256 "29ae99ee5a43f51d54afbb9645447dca1f6fab5ebc89ecd1e6e45ff37f318a59"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
