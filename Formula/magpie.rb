class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4243/magpie-cli-darwin-arm64"
      sha256 "b41641c704fb63af396f543393cfe334a2b442ace3d45c064e62d6e3993dec48"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4243/magpie-cli-darwin-amd64"
      sha256 "fdf54be66bbbf9f097b03855d6e92229bc4851541419d79744681a185a033291"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4243/magpie-cli-linux-arm64"
      sha256 "a16227420c804517c67213ffaa51940efe4ba989b6ecd00f737df3de4363e842"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4243/magpie-cli-linux-amd64"
      sha256 "9168c6026b9430d6d483741bce84deb51e0372d2172aba374e5302eef2c818ab"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
