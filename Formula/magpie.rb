class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4370/magpie-cli-darwin-arm64"
      sha256 "a5fafd64d56ddd1332c3882af63ebd7ffa1fad4e50b93aabf7f12deb39e6bf8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4370/magpie-cli-darwin-amd64"
      sha256 "49214741cc6cf4a84cd30f286e934ad56c424a25d9e19a444d675c6d230d0522"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4370/magpie-cli-linux-arm64"
      sha256 "6dc5422b4eed00b7409c9cb9e5b93bd63483c0cc5e04091a10348f0280b4ed67"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4370/magpie-cli-linux-amd64"
      sha256 "7feabfc9d04fa7ac471b5336cfeb30ec391507a217d7dfd77455ed78dd93bbb4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
