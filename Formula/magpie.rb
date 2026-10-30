class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2234/magpie-cli-darwin-arm64"
      sha256 "fd1f52d85fc6e89c1389b80c4c26a35346de725a10709f3913318be647251db8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2234/magpie-cli-darwin-amd64"
      sha256 "87961270052723d10bc3ef2369300511fb0b99af136ae1fbb72def0220e7a936"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2234/magpie-cli-linux-arm64"
      sha256 "f4d6e71c573a078bb8f064dc76bc3155caf3c258c91a3eb4f44737207acef4e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2234/magpie-cli-linux-amd64"
      sha256 "a42b41d6ea4a62c3a58dbf377ad904f0986e1927634a98afa8df204d00611ee4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
