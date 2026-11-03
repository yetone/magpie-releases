class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2884/magpie-cli-darwin-arm64"
      sha256 "da6b5e5d39bc67bb02a65c9b1f9abf065c4aa34dce89d18b1ae05ddc62f5c1dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2884/magpie-cli-darwin-amd64"
      sha256 "8774a1e5e708f6f9dbf966afb3b21b6bde6b4d55c9d6749d3578c2dd21a74af0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2884/magpie-cli-linux-arm64"
      sha256 "63d38de0bbb369d40afd8ffd971034acec66f3fb263433c7525f92050b2b5bd4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2884/magpie-cli-linux-amd64"
      sha256 "6e69bb81eb1281a0622f2a24d6e214a4e53cf766f3db1ece6a74e6f1981b309d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
