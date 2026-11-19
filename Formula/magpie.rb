class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4537/magpie-cli-darwin-arm64"
      sha256 "482f51217678275d115aa4615618afc4b74f3e1eb064eb7c5c7984349161e3ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4537/magpie-cli-darwin-amd64"
      sha256 "0e13037dc0464f18db1a071f6efcdf5f1c67369bc2e94c17c04cb5eb14d9eff4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4537/magpie-cli-linux-arm64"
      sha256 "dd03463c2582c9b2c701ec287f73c04802fb1e4498f5ce072d4e1a3b2e3ecd51"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4537/magpie-cli-linux-amd64"
      sha256 "5ef98bc2c8da1acedf7d885333ba1a7cd36f1b5faf19eccf3ae9f0d73bf4923f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
