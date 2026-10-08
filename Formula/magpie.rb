class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1124/magpie-cli-darwin-arm64"
      sha256 "6a01bbf4a178d8adf3b30c62ddbf35409b6d70d826329e13501ac9bd2f19e7db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1124/magpie-cli-darwin-amd64"
      sha256 "4c8a0aa793ccb60306ba52cc8817b8a35dfd899f496d12e8627fa456a8c2c2df"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1124/magpie-cli-linux-arm64"
      sha256 "a9ee3f10177e044d1e2f3b2acdee59ecc566f6f692e8726f975a1210f60c4c13"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1124/magpie-cli-linux-amd64"
      sha256 "02493e1a1a5707a11560e1542d96ab3d6cde4fd2fcc01afede08e2696979b120"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
