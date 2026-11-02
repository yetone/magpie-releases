class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2747/magpie-cli-darwin-arm64"
      sha256 "8d258c850cc086209fd2d8523c41ce2996a05a337c000db247eba01e9fd5531d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2747/magpie-cli-darwin-amd64"
      sha256 "1c675740f9da7e7329ea5f067338ed251b70ed42e3c5e3b27efa8c198de2569a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2747/magpie-cli-linux-arm64"
      sha256 "f7a342c8e90f9d841670b21ad0c90076b88b6ba2f0d137cb6f4b089297ac3af4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2747/magpie-cli-linux-amd64"
      sha256 "4c06dc05b51360f9fd3771329f9e0f5f621dc8c798adb80e69aa099ad41b234b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
