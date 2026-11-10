class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3516/magpie-cli-darwin-arm64"
      sha256 "d06569cd8d09b533c741de46cff4ad7bf5900aa886713fa91d8d34c37c941fc6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3516/magpie-cli-darwin-amd64"
      sha256 "3c04b3659cb77cb233744a6c8e4415a221a9924be174664d2d7afd04a94a2dc7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3516/magpie-cli-linux-arm64"
      sha256 "44ab7cc25b702711fc5afb3c33461634114a84933c1c4061d97f2948af4be67a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3516/magpie-cli-linux-amd64"
      sha256 "c8015c0bfc306474ed97f01d1c6c9249e15bd977cb868aafd87b9271739a72c7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
