class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3340/magpie-cli-darwin-arm64"
      sha256 "fcce81d0b5010ee17d5ce27669457e293cd6a3700c376317baa71106f4e02ade"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3340/magpie-cli-darwin-amd64"
      sha256 "271e05f0084ca0206e5c1d5ee715ab2de3073695336171cc3efe87fcef358db3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3340/magpie-cli-linux-arm64"
      sha256 "f07fe12d4f0652227b342dafc42b612294facec54f1aa0d6c4942ba99dbbe737"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3340/magpie-cli-linux-amd64"
      sha256 "6ad3f66e6491bafba4f186e8d815539b8b9a1cbf4d06bf59cb9df5e599534ccf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
