class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4659/magpie-cli-darwin-arm64"
      sha256 "535631e6e7fcaa55071b7c8185fb50503888f179842a22f7c9dfa9a28b2ddca7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4659/magpie-cli-darwin-amd64"
      sha256 "3fed75112ccded259d5482c08faf93a6d83a753e8a3cd97d9e0c627762f0db40"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4659/magpie-cli-linux-arm64"
      sha256 "45cee7e6d27e10953e47e34d49de951b0e8ebb284595ec42350845e888708b1f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4659/magpie-cli-linux-amd64"
      sha256 "424048e2a610f404c0e3520d944674f90ae0b0cd600bfee4b05f318627251723"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
