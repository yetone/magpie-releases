class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5012/magpie-cli-darwin-arm64"
      sha256 "ab32be6b2ad77e0f5173b6ec9a0e16936d077f36f1ad94a152e6cfa4a730381c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5012/magpie-cli-darwin-amd64"
      sha256 "939e88aa52003900e944169dd3bbf2da0399b1883e7d1c4a83b76d0f566faf4e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5012/magpie-cli-linux-arm64"
      sha256 "6a1882fa946c3384c41b38b5bbc447066ff128164b8d10ab4b395f657475ea98"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5012/magpie-cli-linux-amd64"
      sha256 "ebbafe05f235989c6e4714b3090c4ba8ddd89a9ca1d689669d04be254078c985"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
