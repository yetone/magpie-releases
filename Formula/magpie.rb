class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2257/magpie-cli-darwin-arm64"
      sha256 "461002532c258f50fe2d92e606e257eba70587e658bad7f109d3e28575b43b54"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2257/magpie-cli-darwin-amd64"
      sha256 "1cdc471c32bbbacad2d586ac473588bd9e613fda7360f0f3369f49fc6eb23f2a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2257/magpie-cli-linux-arm64"
      sha256 "4bc87fc862e634cbeac0080e0d4ef02bb7f5f3d4b5d4f529de383f3bc2a8a603"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2257/magpie-cli-linux-amd64"
      sha256 "3350bebf77f84881bfca1921093735cc404ae9751126d2c1701be5723d3c9246"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
