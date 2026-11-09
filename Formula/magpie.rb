class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3482/magpie-cli-darwin-arm64"
      sha256 "145193443df4dfb77d23215924f4896308c92e6f1d063afb5884a303981dd58d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3482/magpie-cli-darwin-amd64"
      sha256 "eb6c02f1fdf7871ef6d5963e098cd06c91744a25cb71a13e8229e9d281cf0605"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3482/magpie-cli-linux-arm64"
      sha256 "618b174631d6866e0f48092b7656f0fd247fa2b99142ba5739e818d1aa73b810"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3482/magpie-cli-linux-amd64"
      sha256 "94907fcafdd7c0e4e910c3032513059a6d75ac35cbb57478723044e1d87d4933"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
