class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2280/magpie-cli-darwin-arm64"
      sha256 "094c23d1f9f475f03115c8997bdcb7f302b75fa82e264af17ac10ed037e522da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2280/magpie-cli-darwin-amd64"
      sha256 "de0093b2ef73d48d28091b1e38d6c4db6a777bc95002eed5e77a97dfbd03bc34"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2280/magpie-cli-linux-arm64"
      sha256 "de1972ea622e1457128182da8c01e3e941f69edf8f2809aa9b01e0c1a81e282d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2280/magpie-cli-linux-amd64"
      sha256 "4bb1dc2fd1facb96532afefce0ce831d617b784e09ff8f6030387090b0606d36"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
