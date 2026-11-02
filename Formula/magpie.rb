class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2719/magpie-cli-darwin-arm64"
      sha256 "340c5b46571123a09b6ea4c021c6ee79d40bb3e4eaadf29ed0e3fcf88a0f1c54"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2719/magpie-cli-darwin-amd64"
      sha256 "4663a0b5b0bb867fe8c6584f1f73b0339e7f2877d393f7001b18ebff9311213b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2719/magpie-cli-linux-arm64"
      sha256 "9aac8768aa5ea8b168c61989a5b2ba46df987722ac0e3a717eed19c1dd549091"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2719/magpie-cli-linux-amd64"
      sha256 "285d8f6ee9d61c0b507a8176f7047d244a2b780544133bfef58089bb54544c22"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
