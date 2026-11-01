class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2621/magpie-cli-darwin-arm64"
      sha256 "79067f9a86653d2dd1bdc880526f53d7960a90dfdac1ab8e18e530896f3efe9c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2621/magpie-cli-darwin-amd64"
      sha256 "7fc56eded168a53f6b713d8fb538d8475c22b1d8d527570810bc688d1905c76f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2621/magpie-cli-linux-arm64"
      sha256 "24311e0017c227747874856e92194b5698b0a435f5f4c7e5b07aaf91ddee322c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2621/magpie-cli-linux-amd64"
      sha256 "44c49599bb9b8b37fcf60a74f6d82aa70962d74816bf28b6c3f0c60432dadac3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
