class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3854/magpie-cli-darwin-arm64"
      sha256 "4ceb6d7a5c0ac2b2d95f8b84ee2355f4a3c6b7b3f9f2400208997f7f544371f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3854/magpie-cli-darwin-amd64"
      sha256 "3fbdcbeaf6a39577c493319ac985ad43949c4b4f3741a540adf35e43cf0f8fe9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3854/magpie-cli-linux-arm64"
      sha256 "f5eb3e188915f57ace9606a6fc3140e499927b08a8e579b1ba77e9c86c4e04c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3854/magpie-cli-linux-amd64"
      sha256 "68258112f2a596abe8ce79b365eadd31dd74e704506beaa9ee68c359ec1459b1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
