class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3211/magpie-cli-darwin-arm64"
      sha256 "7fce116b0bbb88a2a19c11481b890c3cf73f55a7f6241cd90057d501358c6620"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3211/magpie-cli-darwin-amd64"
      sha256 "19c9e2540c7b5dafcc6c06551e98927605f5f1dbe4cd4becf927209de96465d2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3211/magpie-cli-linux-arm64"
      sha256 "1ac85ca3ba93ea3c38dcff61eea5f596b3c72b604c6675ce73e9ee0aecfed9f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3211/magpie-cli-linux-amd64"
      sha256 "e5d640ee3556ffdd1b53d1cffec6709425cd394e9917373ad41216aae470c6a4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
