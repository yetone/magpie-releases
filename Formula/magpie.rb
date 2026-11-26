class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4841/magpie-cli-darwin-arm64"
      sha256 "34022e61d1062fd56ed88a9d0da310b649ce54896e464ca8dcab4c57d40cfd68"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4841/magpie-cli-darwin-amd64"
      sha256 "3d8d0a364e8ed23119c3c225fa5ae097287e3afa4db5c7a8d62a6a1c47486ced"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4841/magpie-cli-linux-arm64"
      sha256 "64f8e2d01f92298974dbc5c8069c223d91822a65939d0dc741bd0e3d1319fc8d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4841/magpie-cli-linux-amd64"
      sha256 "84de68bda33eac2674c883d49dbbf94c4c7cb50298c1d05c6b0957dde6ad6c23"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
