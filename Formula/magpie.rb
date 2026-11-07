class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3260/magpie-cli-darwin-arm64"
      sha256 "feaa87ab2098c5387ce80b5f82166bbb9d02c67fd9537d3cd8e873b92cf00e61"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3260/magpie-cli-darwin-amd64"
      sha256 "a82c83e7dc8fe644519b9bc42f7bc0d75b9ffcbba4aa9b45bbb630b194ee93a2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3260/magpie-cli-linux-arm64"
      sha256 "579919ea5afb0679cd29869fc144d36936948dd4bad066f4ff8386080f5b74ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3260/magpie-cli-linux-amd64"
      sha256 "3e188fd690fb0c50d60e9534c0078cc9476179d29ddf69df8d8859d4d5d12c6f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
