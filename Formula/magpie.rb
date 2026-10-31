class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2302/magpie-cli-darwin-arm64"
      sha256 "55bd66dad34dd39174429d9041cc37e7d1a9c942967f4400ce034269b09001a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2302/magpie-cli-darwin-amd64"
      sha256 "b8af1681f4c3d2c110378f2db69e0822ffbe154a0e7c00d7aace728b10c19d44"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2302/magpie-cli-linux-arm64"
      sha256 "c70c0cf5421284a3ff7ceb2460fed7bee04f538e41a900f36109900313cd334f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2302/magpie-cli-linux-amd64"
      sha256 "fa876a681038a1fb2938c9cb87fbdb260a1903e39ecc0d222dd198df9130bda8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
