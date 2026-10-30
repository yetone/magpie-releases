class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2140/magpie-cli-darwin-arm64"
      sha256 "c84551b317365b60351415d625ada98f716d565452eb8b8763986b15bc7dde81"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2140/magpie-cli-darwin-amd64"
      sha256 "0cdee4f323bf7a9a9731c9ac26f34af43aab8300105f2fc33ced01de02f2cd3d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2140/magpie-cli-linux-arm64"
      sha256 "891ed40bb8a9d80375f23d62f992e2e11ee00828e9fa923f0b18b4ee86a07f2f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2140/magpie-cli-linux-amd64"
      sha256 "a7faa874a65b339087a2a6a6003246112206e7bc98fa6be2c102dac372f964da"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
