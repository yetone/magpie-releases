class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1938/magpie-cli-darwin-arm64"
      sha256 "4fa7000fba7c9ea1dca53924db009a0944acaef18912a2d07c4ca3397dc9a8b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1938/magpie-cli-darwin-amd64"
      sha256 "683d2315d7d99bd4aa8a15f384cfbf8f1c43241b6bfd6ad78d1fef3031e4c479"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1938/magpie-cli-linux-arm64"
      sha256 "ce2f58ff8eb3c524033170d165a6918f2b902ad3d8ebb743d42d0c901dae32a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1938/magpie-cli-linux-amd64"
      sha256 "1cce747fbf327f39749387ff4ec554fa9bd264a4b7e57c11611248d9169b236a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
