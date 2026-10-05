class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1005/magpie-cli-darwin-arm64"
      sha256 "4e33affd57506df6b8b29b5c8d5e92c840b88eb090144d4f3ddde6f098d6aa2b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1005/magpie-cli-darwin-amd64"
      sha256 "95e7b454d0e941c6f561105415b7111b60d5355dd35a17bb290f84b00b4c0891"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1005/magpie-cli-linux-arm64"
      sha256 "83ade3941f86b6d6535174c431650ec0c7769a509d73b47018fbf9163338c0df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1005/magpie-cli-linux-amd64"
      sha256 "3bfb7095bb76efb4dce296b1e2c9bf3b038ea4655ab8942a7480054f7136fb35"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
