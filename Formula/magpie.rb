class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4275/magpie-cli-darwin-arm64"
      sha256 "b8030705a77ec77be37a88e6fd16d766751c5a8e68a3f3cac98c428b03d8e4db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4275/magpie-cli-darwin-amd64"
      sha256 "6103cde0e94e2b1bc425d07d1d05fdf622a903048f055c0cbf1bbd4853d09256"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4275/magpie-cli-linux-arm64"
      sha256 "1503bd7c8c57d08fac1eefb3bceadb4fb6eabd3686783f1d89a41f4d802bca2c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4275/magpie-cli-linux-amd64"
      sha256 "7e3152546e1ccc128263c69db739da013bcad3ed064e9a466d81f0ad3fd9593f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
