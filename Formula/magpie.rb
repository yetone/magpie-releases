class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4941/magpie-cli-darwin-arm64"
      sha256 "f4de7fd8ca5f288affeb68facf76a3c1c9aa70440e849406a926ea941269a79f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4941/magpie-cli-darwin-amd64"
      sha256 "b528e609c599d3b5b73754dc2fed84ff65bb34219a0a2f92b3c5ec432d18cb2b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4941/magpie-cli-linux-arm64"
      sha256 "2bdbb2ba2e2f66099d0e16f26ed047cb92813ad1a779713b01b4e7f096534c98"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4941/magpie-cli-linux-amd64"
      sha256 "24008b64ed5a905d387ba7a3e76e2f39336798fa92e0ca30c02f07f5c1caadaf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
