class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3344/magpie-cli-darwin-arm64"
      sha256 "5d39030dbd1481ec61b560735854ad6fdc7b399eac7d9bb8c17983238ef5000f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3344/magpie-cli-darwin-amd64"
      sha256 "620c637a500862afd750f8a83eac01c6f9de787e63175a9777bcb8c456400185"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3344/magpie-cli-linux-arm64"
      sha256 "5b2e8d2b36dce0ab6d06fa6bdc1371f4e7c125501dfcf6a6e7dd69b3da311741"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3344/magpie-cli-linux-amd64"
      sha256 "0ca87d1c39115c5bc7fa7d39472d06fb621283453f8e220eb6e515c488528e1b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
