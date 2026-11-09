class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3403/magpie-cli-darwin-arm64"
      sha256 "af8e5d21b788c43002256e41f8fdd7b0f99e19f9da7d63456ec316cf9e8bbe8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3403/magpie-cli-darwin-amd64"
      sha256 "c77bdc6f5f8687900e6993eee4dfe7161628b2f0a632a70c6d36b5f68c54909b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3403/magpie-cli-linux-arm64"
      sha256 "23053dd89865c9060280013ad46819202fd90e87db3b966a90b2d1963c2a520a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3403/magpie-cli-linux-amd64"
      sha256 "e3ff8fa268754aa27f73ffb355c9940e184fc161b31ba416e110d19f23ef6fff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
