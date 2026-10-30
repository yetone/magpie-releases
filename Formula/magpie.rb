class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2183/magpie-cli-darwin-arm64"
      sha256 "0f0971b70d2782712c1d4d8aacfffdb3a451a208d38162387729aac6d3031650"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2183/magpie-cli-darwin-amd64"
      sha256 "f12a7a5b4a7bb5f672006d2e2fa1e3a1e7ebffa11b03c229ba647599e42c871e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2183/magpie-cli-linux-arm64"
      sha256 "0f78734442b353181aa13375d044bd64d323c78799dcd733b072b48a84d48f93"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2183/magpie-cli-linux-amd64"
      sha256 "9762c9d0031b2a36cae5222497f14780638bdf42ff88b24b288d24b407283779"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
