class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4990/magpie-cli-darwin-arm64"
      sha256 "d7df890960f16e09f1b3816ef7e8a7af022c39a4365675c7b05d60b8a82d9be4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4990/magpie-cli-darwin-amd64"
      sha256 "4f6d560b287cbe834bd4c92c8fa07d9271b1f94eac6fa9085a0947113c894b79"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4990/magpie-cli-linux-arm64"
      sha256 "ca1e96a45e0c082434e553cd762f52aadcd7ed5f949dad68c2108e54c1e9cb0d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4990/magpie-cli-linux-amd64"
      sha256 "3e9e2bcaf07acf4fbb9be8b17a17ccac3346c936d76a09085b9eacbe49f2a191"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
