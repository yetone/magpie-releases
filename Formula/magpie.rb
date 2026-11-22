class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4685/magpie-cli-darwin-arm64"
      sha256 "ce0ab139d98faa2c11659d2393573c6f0c581bad10b940ea015a49fbd8dbbcce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4685/magpie-cli-darwin-amd64"
      sha256 "51d31d346fe2af8c13d53c6ac6cfa3dd117a5191d08ade14e63d01842aa91e1a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4685/magpie-cli-linux-arm64"
      sha256 "3c22b3545f1227e6a2f617ed12c15e05b0cc54d5775ed2b86a4931e7f3e1e510"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4685/magpie-cli-linux-amd64"
      sha256 "f20f8c165ff07beb892f9902d5a4280826b8d28811a2c0eda73d6cfec3e371f0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
