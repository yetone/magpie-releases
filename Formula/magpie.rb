class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3702/magpie-cli-darwin-arm64"
      sha256 "601fa089fde363a4e98a69734f97bfb6baa3c48ff9755d0e92b56b7c9b3b73d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3702/magpie-cli-darwin-amd64"
      sha256 "f48a2472184928e906e3bc1813ac1b0987728cff85ce4e85819ae23b00161aa3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3702/magpie-cli-linux-arm64"
      sha256 "f7337731417226bb3c14a5ca1df0f74f95b06cde7563c6cf64cdee905e299edf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3702/magpie-cli-linux-amd64"
      sha256 "741ee3b615acdd35512a8e8ab7e9da5571287b70f792b73344ebda80bbd47bb7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
