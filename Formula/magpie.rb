class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4865/magpie-cli-darwin-arm64"
      sha256 "fa107052822eeea91ad40af41344111ee75f693afb023b8c0b5e5502cf319397"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4865/magpie-cli-darwin-amd64"
      sha256 "151676af9fbd07e012c87a7762fb5f90bc71fb387a9a35c1d7cc058cfaeef021"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4865/magpie-cli-linux-arm64"
      sha256 "dfa7ae54bd255fa1d36f6e102c8f6543887052eb7e86e3770fc40fa17f3396c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4865/magpie-cli-linux-amd64"
      sha256 "28586323fc3c1698240b239d8a3bb20253a24fc6770c66f71b05fd1da1e08440"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
