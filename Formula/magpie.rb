class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4568/magpie-cli-darwin-arm64"
      sha256 "d46501d65fdb80f7892d82fbfd42e64a0857af78d5ee914e753fe10d9f850e11"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4568/magpie-cli-darwin-amd64"
      sha256 "50b029033e27fde1d962cdfcaf851395bf9793e0162d7391ae4c3a11c007a83b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4568/magpie-cli-linux-arm64"
      sha256 "0a9b755bffc4b79c06ec8ab83e49951acb87ea2eb18da1498dffbc1aaaead1d7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4568/magpie-cli-linux-amd64"
      sha256 "540f3e9ec4bd7b4391c01d08cb6359c767427ea2e9ef1890f885022c15066835"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
