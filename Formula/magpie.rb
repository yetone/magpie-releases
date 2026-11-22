class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4678/magpie-cli-darwin-arm64"
      sha256 "0e2c6b081cde0b71307928ecd28d805fddc294c77116270238e2ae58c50b97c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4678/magpie-cli-darwin-amd64"
      sha256 "2df24f13681e59919459bf4fb70e61530aebb5159965b26b4d7b29e35e436228"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4678/magpie-cli-linux-arm64"
      sha256 "e98238f24bd2485da7b70e66e54d063ba7e3fa26773df8c83e6693a72f2b578e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4678/magpie-cli-linux-amd64"
      sha256 "f53edfdd8d26e67106b9bbbe15130eb757152c6714f0111817e0247b41107bb0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
