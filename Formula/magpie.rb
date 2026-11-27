class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4973/magpie-cli-darwin-arm64"
      sha256 "315c400e2edabd44fae8b2a398ddc66d76307c016ea39ac591df249189ad3fba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4973/magpie-cli-darwin-amd64"
      sha256 "575fea6a4681a3bfd8b2ac128802d5aaf6a5737dbd0037b8e8f460452948d95a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4973/magpie-cli-linux-arm64"
      sha256 "305cf21184867eb40925b34e85f5ccc34f4892fd5e0dbaeda0ae54c0b76972a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4973/magpie-cli-linux-amd64"
      sha256 "f714f941efd856e5d13c0eecb262288ca1696a30a0ab34b39568983302b9ffa8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
