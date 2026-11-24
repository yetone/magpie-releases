class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4774/magpie-cli-darwin-arm64"
      sha256 "3e2d170e07bf8fb4e282b2b0f1238a9de47a6ef6795eca03ae104dec74f08373"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4774/magpie-cli-darwin-amd64"
      sha256 "6b0bde35576f21d8bc241f78ec0c321b34d30bf37a4c1aff4265af932058ca24"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4774/magpie-cli-linux-arm64"
      sha256 "4276be87c1c8d167e3f1bfb2f81a757701d549c70ba26c8c4c35da305b6e2b7a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4774/magpie-cli-linux-amd64"
      sha256 "6127d6be2f08a459c5de6cca3e58ce776d4f524c65400389d03dc0bc457f4c69"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
