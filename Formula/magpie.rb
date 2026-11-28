class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5008/magpie-cli-darwin-arm64"
      sha256 "cf769665a2e42d1f68cbc8253e8073ee8408e891f20555411a4ec84033f0caa3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5008/magpie-cli-darwin-amd64"
      sha256 "5c737958f36b444ebb7046879a2a53e8065ccad423e04b27c7bc6440a519c8ea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5008/magpie-cli-linux-arm64"
      sha256 "87136b8b8238b93003ba2fc7b6ab7e3a6fd48afc9df111fde62c4c6a7d7e0ffc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5008/magpie-cli-linux-amd64"
      sha256 "1369054431c60bb3ccb62c7a2e23f5eee8c4460533f287fb08ae2b17a67841f8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
