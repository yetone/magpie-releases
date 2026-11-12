class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3958/magpie-cli-darwin-arm64"
      sha256 "5ddce20768150306ef8124987471e3173f0266a48fdfc81ded12d47cfcd5140a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3958/magpie-cli-darwin-amd64"
      sha256 "a045ac72ca63129e07fb423a316544bee201995a78415b06793d5b499574852b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3958/magpie-cli-linux-arm64"
      sha256 "b031202717ee075ef6a834550a6dfe0670513c0578f88579c9a540a74f48fdfb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3958/magpie-cli-linux-amd64"
      sha256 "b6bae7855b8bb39ad96555b6e0b84cfe587a98116ea07ddb2119a37e14eb3af6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
