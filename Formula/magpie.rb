class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3354/magpie-cli-darwin-arm64"
      sha256 "1d0d6c1cb9f0d515fa83d8448cf44bbf5ca4ae1ad7ad0f6382ae7ccf2d420497"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3354/magpie-cli-darwin-amd64"
      sha256 "584a0e94905cd0b44d7a371aa14f94bbeaf59c62b3241d0a0b3cd25437c587ec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3354/magpie-cli-linux-arm64"
      sha256 "05c25f25b1a017d19a698acb590755af8216ec2fc42c76dac97bd5feb028e4bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3354/magpie-cli-linux-amd64"
      sha256 "e4428d9476f139504142695561b61feab322d0a57f55f051dc7c1e1c647d9b9d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
