class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4293/magpie-cli-darwin-arm64"
      sha256 "08ed1b9ca2c658467850e283f5a7189e3f3dec1864ed06ac3bb7d26e58e284d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4293/magpie-cli-darwin-amd64"
      sha256 "0e3ea9b0ac253d6fef08f33b8e159dc1e30afc7d08ade7dfb930542cf2f2cfb0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4293/magpie-cli-linux-arm64"
      sha256 "b5a4579257c54b943d3c69024f81a018e58895bd90b855d612a79a10859048fb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4293/magpie-cli-linux-amd64"
      sha256 "e186ea9972ce4ed3608605a50a4dba78e69859b9f9feaaa9a379ee70b5a66a30"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
