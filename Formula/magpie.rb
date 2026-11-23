class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4694/magpie-cli-darwin-arm64"
      sha256 "6c53106bd455e31b8564f38727c7feb5e0fdde4892d31cb7a82bad877be6630b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4694/magpie-cli-darwin-amd64"
      sha256 "17a9f42a4dbedf6a92ec6576956b92cef436a74b33240c60bd7ba105b0016c9e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4694/magpie-cli-linux-arm64"
      sha256 "773c04cbfcde76c366f0251577f947035e7a273c77358411f1d1389d925bb699"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4694/magpie-cli-linux-amd64"
      sha256 "3e2e94b0119373ca6b52c610f33efdcfee1868c5b5fbdd3027df1876462e4cd1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
