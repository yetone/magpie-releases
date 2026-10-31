class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2445/magpie-cli-darwin-arm64"
      sha256 "fd59065940f7358601273a81f792cb6d6278d433b09a3145369fab0a4ee9fe34"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2445/magpie-cli-darwin-amd64"
      sha256 "e62b9c4ace1fad3fffb946d1c89193a8e99e95ff1ec0accaa22f4e85b6cdacb4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2445/magpie-cli-linux-arm64"
      sha256 "d51bf287b7f337c7aa67d21f17a7d31b03efdb7a8d6cb61e7c7d6a00c4ecf2d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2445/magpie-cli-linux-amd64"
      sha256 "bdd14d35b283ab6f281bdbbf9617e5915622946b97ceef1a1f4282c2b81df3c2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
