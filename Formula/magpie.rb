class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2377/magpie-cli-darwin-arm64"
      sha256 "d80f748b93081befc06093a37106b6917dd77529f0f73f75c414fc13927c089e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2377/magpie-cli-darwin-amd64"
      sha256 "49adea26ba98e353a733137d965cdd45e55a27bc85e93a1994a7e2a4e15b357d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2377/magpie-cli-linux-arm64"
      sha256 "067302a2f7050106ff92e7aa26a6edfd388809e34165f14ab2c6c128899e9807"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2377/magpie-cli-linux-amd64"
      sha256 "eba8b3ebcb64838a84d77e244b5c331503769dc14137674c67943969a12cd512"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
