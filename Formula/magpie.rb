class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2894/magpie-cli-darwin-arm64"
      sha256 "4d898788503c3561412137b3ea153976e188caf0838d86fdf902b09b40751f63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2894/magpie-cli-darwin-amd64"
      sha256 "b69ff849424159d6f1a30b85ff9a6ba146aa0b9bfaa8e1363bf5537cd1ee2800"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2894/magpie-cli-linux-arm64"
      sha256 "c54312093e11d461a6effdb93511fb0ac55c4da816f2ba5f332d405f374b30fb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2894/magpie-cli-linux-amd64"
      sha256 "8a6fd987a97b07944975421bcbe5a019ab6ce716d0332cf275b7c1a04dc73d53"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
