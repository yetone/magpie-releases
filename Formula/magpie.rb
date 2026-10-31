class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2427/magpie-cli-darwin-arm64"
      sha256 "52afd31e03b127d5466bd7e6d59fe0a35cf43f41fa1eb8b48040c0132578e756"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2427/magpie-cli-darwin-amd64"
      sha256 "fa52321a9855d5b18cda879b35d20d0042cebce96061864d32363cac745d52db"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2427/magpie-cli-linux-arm64"
      sha256 "ca410735d51240b26c6b46a1d9a60e8ada7b059c0b1628a24cb836c856d99736"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2427/magpie-cli-linux-amd64"
      sha256 "6261dbbdea631ba11faa1aad05d8b7380047c70f2f997115fd0b7164d169ef12"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
