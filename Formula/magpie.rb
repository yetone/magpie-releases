class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.954/magpie-cli-darwin-arm64"
      sha256 "ad8f301a55f68d77d960ef3eb1bce065cfca91c9cc4795a605d9580f288a79ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.954/magpie-cli-darwin-amd64"
      sha256 "ecae68be02f84af3f52a371e90a76adf3076116450f21fa5c3a2dc75334b789d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.954/magpie-cli-linux-arm64"
      sha256 "44b90533a049d0e83fdb0a4629d5b08a11a1c92d8ef62a9dfcf3511bcfcc0482"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.954/magpie-cli-linux-amd64"
      sha256 "0e3c7bd6f66079b7624ca4d546c07d4d5b6a71447ede8316f7c98d75ddbdd32a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
