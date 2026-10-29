class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2030/magpie-cli-darwin-arm64"
      sha256 "c716ce3a055b0521989d53a7ae9332f23ab84b7b4361286086352b7a2403cb0b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2030/magpie-cli-darwin-amd64"
      sha256 "e757a3aa191e0660f0fd8529089fbfd25bc65c80c013120325a3e35c6052b43f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2030/magpie-cli-linux-arm64"
      sha256 "ea440dbfaa8b5ddcc0c230ef26e4f3e41b6d62705fc010288561877291d8ee21"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2030/magpie-cli-linux-amd64"
      sha256 "5961b0b6eb6879e595f0cf9909a5e8ce4a76e68b0fe5f0350334f4304a66b6a3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
