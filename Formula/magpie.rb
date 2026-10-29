class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2006/magpie-cli-darwin-arm64"
      sha256 "908ca33407b1b4029e7641b86a9e7c94e0ac26abe9f6270bc3f2120673d5b3ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2006/magpie-cli-darwin-amd64"
      sha256 "317c015afd5d740d93a7b7d063549c28fa5459a399900e8ce105708ab7223114"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2006/magpie-cli-linux-arm64"
      sha256 "c4ca89ee8173ace1b62add4949c0472cfb68906011ad7757c716f199d8c0337e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2006/magpie-cli-linux-amd64"
      sha256 "83d5cbf77c630d19b0d08a670bef13c4321dcdd3745c16487414b1e5ffe5bb02"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
