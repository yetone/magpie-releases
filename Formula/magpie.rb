class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4523/magpie-cli-darwin-arm64"
      sha256 "dd177dc22847aa1379ad6e082d33af73ed72f4d824f9acae8d89de7769cf352a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4523/magpie-cli-darwin-amd64"
      sha256 "66a10c0641b2608f087cf654b529f81375688d19e80e826310e3f61ec67c12c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4523/magpie-cli-linux-arm64"
      sha256 "3e4b7dea5d0d18c19a9179ac11fcaa5409b3b403c7d671bbe5a2128303a341f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4523/magpie-cli-linux-amd64"
      sha256 "72c5e0a5921f8838d8add5be7693b2dacccad4a6c7292bc68b8f4e42b674386f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
