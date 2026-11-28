class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5019/magpie-cli-darwin-arm64"
      sha256 "0c3a46d2ebf26b293d7500956475b5e88f36f4c43c09c3397dc0fc5c1846997f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5019/magpie-cli-darwin-amd64"
      sha256 "259be2bbf9a1ac5403c6a6637a11a79c62a5fcae53307f6adbc87afb38d03647"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5019/magpie-cli-linux-arm64"
      sha256 "8b86c49e14b0c9e0a1ef5dda2f135f6d54abe31bf788a8d809dc98c921bde13b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5019/magpie-cli-linux-amd64"
      sha256 "75ea2a3a19c4b189b845d7d7e8677b4a67352c6a61d119fcef4e67c210be1756"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
